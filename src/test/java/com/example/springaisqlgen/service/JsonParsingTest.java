package com.example.springaisqlgen.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class JsonParsingTest {

    @Test
    public void testLoadGoldenExamples() throws IOException {
        ClassPathResource resource = new ClassPathResource("golden_examples.json");
        assertTrue(resource.exists(), "File should exist");

        ObjectMapper mapper = new ObjectMapper();
        JsonNode root = mapper.readTree(resource.getInputStream());

        assertNotNull(root);
        assertTrue(root.isArray());
        System.out.println("Successfully parsed JSON: " + root.toString());
    }
}
