package com.example.springaisqlgen;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;

import org.junit.jupiter.api.Test;

public class CreateSampleExcel {
    @Test
    public void generate() throws IOException {
        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Report Data");
            Row header = sheet.createRow(0);
            header.createCell(0).setCellValue("Report Attribute");
            header.createCell(1).setCellValue("Definition");
            header.createCell(2).setCellValue("Data Source");

            Row row1 = sheet.createRow(1);
            row1.createCell(0).setCellValue("Customer Full Name");
            row1.createCell(1).setCellValue("Concatenation of First and Last Name");
            row1.createCell(2).setCellValue("Customers.FirstName, Customers.LastName");

            Row row2 = sheet.createRow(2);
            row2.createCell(0).setCellValue("Total Order Amount");
            row2.createCell(1).setCellValue("Sum of all orders for the customer");
            row2.createCell(2).setCellValue("Orders.TotalAmount");

            try (FileOutputStream fos = new FileOutputStream(
                    "C:/Users/akash.hanchinal/.gemini/antigravity/scratch/sample_mapping.xlsx")) {
                workbook.write(fos);
            }
        }
        System.out.println("Sample Excel created.");
    }
}
