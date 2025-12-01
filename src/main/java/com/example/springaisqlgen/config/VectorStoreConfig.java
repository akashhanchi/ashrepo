package com.example.springaisqlgen.config;

import org.springframework.ai.chroma.ChromaApi;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.vectorstore.ChromaVectorStore;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;

@Configuration
@ConditionalOnProperty(name = "app.vector-store.enabled", havingValue = "true", matchIfMissing = true)
public class VectorStoreConfig {

    @Bean
    public VectorStore vectorStore(EmbeddingModel embeddingModel) {
        // Explicitly configure ChromaApi with the correct URL
        ChromaApi chromaApi = new ChromaApi("http://localhost:8000", new RestTemplate());

        // Use the specific collection name
        return new ChromaVectorStore(embeddingModel, chromaApi, "SqlGenCollection", true);
    }
}
