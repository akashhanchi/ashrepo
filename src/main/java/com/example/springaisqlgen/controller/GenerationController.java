package com.example.springaisqlgen.controller;

import com.example.springaisqlgen.model.ExcelRow;
import com.example.springaisqlgen.service.ExcelService;
import com.example.springaisqlgen.service.SqlGenerationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/api/generate")
public class GenerationController {

    private final ExcelService excelService;
    private final SqlGenerationService sqlGenerationService;

    public GenerationController(ExcelService excelService, SqlGenerationService sqlGenerationService) {
        this.excelService = excelService;
        this.sqlGenerationService = sqlGenerationService;
    }

    @PostMapping
    public ResponseEntity<String> generateSql(@RequestParam("excelFile") MultipartFile excelFile) {
        try {
            List<ExcelRow> excelRows = excelService.parseExcel(excelFile);
            String sql = sqlGenerationService.generateSql(excelRows);
            return ResponseEntity.ok(sql);
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body("Error generating SQL: " + e.getMessage());
        }
    }
}
