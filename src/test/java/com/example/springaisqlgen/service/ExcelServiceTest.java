package com.example.springaisqlgen.service;

import com.example.springaisqlgen.model.ExcelRow;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockMultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ExcelServiceTest {

    @Test
    void parseExcel() throws IOException {
        ExcelService excelService = new ExcelService();

        // Create a mock Excel file in memory
        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Test");
            Row header = sheet.createRow(0);
            header.createCell(0).setCellValue("Report Attribute");
            header.createCell(1).setCellValue("Definition");
            header.createCell(2).setCellValue("Data Source");

            Row data = sheet.createRow(1);
            data.createCell(0).setCellValue("Customer Name");
            data.createCell(1).setCellValue("Name of the customer");
            data.createCell(2).setCellValue("CustomerTable.Name");

            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            workbook.write(bos);

            MockMultipartFile file = new MockMultipartFile("file", "test.xlsx",
                    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", bos.toByteArray());

            List<ExcelRow> rows = excelService.parseExcel(file);

            assertEquals(1, rows.size());
            assertEquals("Customer Name", rows.get(0).reportAttribute());
            assertEquals("Name of the customer", rows.get(0).definition());
            assertEquals("CustomerTable.Name", rows.get(0).dataSource());
        }
    }
}
