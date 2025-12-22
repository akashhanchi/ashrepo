package com.example.springaisqlgen.service;

import org.springframework.ai.document.Document;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.ai.vectorstore.ChromaVectorStore;
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
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class DdlBlockSplitter {

    private static final Pattern DDL_PATTERN = Pattern.compile(
            "(?=\\bCREATE\\s+TABLE\\b|" +
                    "\\bALTER\\s+TABLE\\b|" +
                    "\\bCREATE\\s+(UNIQUE\\s+)?INDEX\\b|" +
                    "\\bCOMMENT\\s+ON\\b)",
            Pattern.CASE_INSENSITIVE);

    public static List<Document> splitDdl(String ddl, Map<String, Object> metadata) {
        List<Document> documents = new ArrayList<>();
        String[] blocks = DDL_PATTERN.split(ddl);

        for (String block : blocks) {
            String trimmedBlock = block.trim();
            if (!trimmedBlock.isEmpty()) {
                documents.add(new Document(trimmedBlock, metadata));
            }
        }

        return documents;
    }
}
