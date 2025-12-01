package com.example.springaisqlgen.service;

import com.example.springaisqlgen.model.ExcelRow;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.chat.prompt.PromptTemplate;
import org.springframework.ai.document.Document;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.HashSet;
import java.util.Set;

@Service
public class SqlGenerationService {

        private final ChatModel chatModel;
        private final DdlService ddlService;

        public SqlGenerationService(ChatModel chatModel, DdlService ddlService) {
                this.chatModel = chatModel;
                this.ddlService = ddlService;
        }

        public String generateSql(List<ExcelRow> excelRows) {
                // 1. Iterative Search: Retrieve relevant DDL chunks for each unique requirement
                Set<String> uniqueDocs = new HashSet<>();

                // Group by definition to avoid redundant searches for same concept
                Set<String> searchQueries = excelRows.stream()
                                .map(row -> row.reportAttribute() + " " + row.definition() + " " + row.dataSource())
                                .collect(Collectors.toSet());

                for (String query : searchQueries) {
                        // Search with topK=2 for each attribute to get specific table
                        List<Document> docs = ddlService.search(query, 2);
                        for (Document doc : docs) {
                                uniqueDocs.add(doc.getContent());
                        }
                }

                String ddlContext = String.join("\n\n", uniqueDocs);

                // 3. Prepare Excel data string
                String excelData = excelRows.stream()
                                .map(row -> String.format("- Attribute: %s, Definition: %s, Source: %s",
                                                row.reportAttribute(), row.definition(), row.dataSource()))
                                .collect(Collectors.joining("\n"));

                String promptText = """
                                You are an expert MS SQL Server developer.
                                Your task is to generate a single valid MS SQL query based on the provided Database Schema (DDL) and the Business Requirements (Excel Mapping).

                                ### Database Schema (Context):
                                {ddl}

                                ### Business Requirements (from Excel):
                                The query should retrieve the following attributes based on the definitions and data sources provided:
                                {excelData}

                                ### Instructions:
                                1. Analyze the DDL to understand the tables and relationships.
                                2. Map the "Report Attribute" to the corresponding columns in the DDL based on the "Definition" and "Data Source".
                                   - IMPORTANT: The "Data Source" field often contains the physical table or column name. Prioritize this hint when mapping attributes.
                                3. Construct a SELECT statement that retrieves these attributes.
                                4. Join tables as necessary based on foreign keys or logical relationships inferred from the DDL.
                                5. Output ONLY the SQL query. Do not include markdown formatting or explanations.
                                """;

                PromptTemplate promptTemplate = new PromptTemplate(promptText);
                Prompt prompt = promptTemplate.create(Map.of("ddl", ddlContext, "excelData", excelData));

                return chatModel.call(prompt).getResult().getOutput().getContent();
        }
}
