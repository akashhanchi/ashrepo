package com.example.springaisqlgen;

import org.springframework.ai.autoconfigure.vectorstore.chroma.ChromaVectorStoreAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = { ChromaVectorStoreAutoConfiguration.class })
public class SpringAiSqlGenApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringAiSqlGenApplication.class, args);
	}

}
