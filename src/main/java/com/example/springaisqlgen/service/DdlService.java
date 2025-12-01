package com.example.springaisqlgen.service;

import org.springframework.ai.document.Document;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class DdlService {

    @Value("${app.ddl-directory}")
    private String ddlDirectory;

    @Value("${app.ddl.ingest:false}")
    private boolean ingestDdl;

    private final VectorStore vectorStore;

    public DdlService(VectorStore vectorStore) {
        this.vectorStore = vectorStore;
    }

    @PostConstruct
    public void init() {
        if (ingestDdl) {
            try {
                loadDdls();
            } catch (Exception e) {
                System.err.println("Failed to load DDLs: " + e.getMessage());
                e.printStackTrace();
            }
        } else {
            System.out.println("DDL ingestion skipped (app.ddl.ingest=false). Using existing Vector Store data.");
        }
    }

    public void loadDdls() throws IOException {
        System.out.println("Starting DDL ingestion...");

        // Ensure path ends with /
        String pathStr = ddlDirectory.replace("\\", "/");
        Path dirPath = Paths.get(pathStr);

        ingestFile(dirPath.resolve("create.sql"), "CREATE");
        ingestFile(dirPath.resolve("alter.sql"), "ALTER");
        ingestFile(dirPath.resolve("index.sql"), "INDEX");

        System.out.println("DDL ingestion completed.");
    }

    private void ingestFile(Path filePath, String type) {
        try {
            Resource resource = new UrlResource(filePath.toUri());
            if (!resource.exists() || !resource.isReadable()) {
                System.out.println("File not found or not readable: " + filePath);
                return;
            }

            System.out.println("Processing " + type + " file: " + filePath);
            List<Document> documents = new ArrayList<>();

            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(resource.getInputStream(), StandardCharsets.UTF_8))) {
                String content = reader.lines().collect(Collectors.joining("\n"));

                // Split by semi-colon
                String[] statements = content.split(";");

                for (String stmt : statements) {
                    if (stmt.trim().length() > 10) {
                        Document doc = new Document(stmt.trim() + ";",
                                Map.of("type", type, "source", filePath.getFileName().toString()));
                        documents.add(doc);
                    }
                }
            }

            if (!documents.isEmpty()) {
                vectorStore.add(documents);
                System.out.println("Ingested " + documents.size() + " statements from " + filePath);
            }

        } catch (Exception e) {
            System.err.println("Error processing file " + filePath + ": " + e.getMessage());
        }
    }

    public List<Document> search(String query) {
        return search(query, 4); // Default topK
    }

    public List<Document> search(String query, int topK) {
        return vectorStore.similaritySearch(
                org.springframework.ai.vectorstore.SearchRequest.query(query).withTopK(topK));
    }
}
