package com.example.springaisqlgen.service;

import com.example.springaisqlgen.model.ExcelRow;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExcelService {

    private static final String SHEET_NAME = "Report Data";
    private static final String COL_REPORT_ATTRIBUTE = "Report Attribute";
    private static final String COL_DEFINITION = "Definition";
    private static final String COL_DATA_SOURCE = "Data Source";

    public List<ExcelRow> parseExcel(MultipartFile file) throws IOException {
        List<ExcelRow> rows = new ArrayList<>();

        try (InputStream is = file.getInputStream();
                Workbook workbook = new XSSFWorkbook(is)) {

            Sheet sheet = workbook.getSheet(SHEET_NAME);
            if (sheet == null) {
                // Fallback to first sheet if specific sheet not found, or throw error?
                // Requirement says "Report Data", so let's try to find it, if not check index 0
                // but warn.
                System.out.println("Sheet '" + SHEET_NAME + "' not found. Checking first sheet...");
                sheet = workbook.getSheetAt(0);
            }

            Row headerRow = sheet.getRow(0);
            if (headerRow == null) {
                throw new IllegalArgumentException("Sheet is empty");
            }

            Map<String, Integer> colIndexMap = new HashMap<>();

            // Map headers to column indices
            for (Cell cell : headerRow) {
                colIndexMap.put(cell.getStringCellValue().trim(), cell.getColumnIndex());
            }

            // Validate required columns exist
            if (!colIndexMap.containsKey(COL_REPORT_ATTRIBUTE) ||
                    !colIndexMap.containsKey(COL_DEFINITION) ||
                    !colIndexMap.containsKey(COL_DATA_SOURCE)) {
                throw new IllegalArgumentException("Missing required columns in Excel file: " +
                        COL_REPORT_ATTRIBUTE + ", " + COL_DEFINITION + ", " + COL_DATA_SOURCE);
            }

            // Iterate through data rows
            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
                Row row = sheet.getRow(i);
                if (row == null)
                    continue;

                String reportAttribute = getCellValue(row, colIndexMap.get(COL_REPORT_ATTRIBUTE));
                String definition = getCellValue(row, colIndexMap.get(COL_DEFINITION));
                String dataSource = getCellValue(row, colIndexMap.get(COL_DATA_SOURCE));

                if (reportAttribute != null && !reportAttribute.isEmpty()) {
                    rows.add(new ExcelRow(reportAttribute, definition, dataSource));
                }
            }
        }

        return rows;
    }

    private String getCellValue(Row row, Integer columnIndex) {
        if (columnIndex == null)
            return "";
        Cell cell = row.getCell(columnIndex);
        if (cell == null)
            return "";

        return switch (cell.getCellType()) {
            case STRING -> cell.getStringCellValue();
            case NUMERIC -> String.valueOf(cell.getNumericCellValue());
            case BOOLEAN -> String.valueOf(cell.getBooleanCellValue());
            default -> "";
        };
    }
}
