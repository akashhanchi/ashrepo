# spring-ai-sql-gen

spring-ai-sql-gen is a Retrieval-Augmented Generation (RAG) application that automates the creation of MS SQL Server queries from natural language business requirements defined in Excel files.

The system bridges the gap between business users and database schemas by combining structured Excel input, database DDL ingestion, vector search, and local generative AI.

**High-Level Purpose**

Business users often describe reporting needs in natural language, while databases are defined in complex SQL schemas.
spring-ai-sql-gen connects these two worlds by:

Reading business requirements from Excel

Understanding the actual physical database schema from DDL files

Using Generative AI + Vector Search to produce the MS SQL queries

This eliminates manual SQL writing and reduces misalignment between business intent and database structure.

| Layer           | Technology                     |
| --------------- | ------------------------------ |
| Framework       | Spring Boot 3.2.5 (Web)        |
| AI Integration  | Spring AI 1.0.0-M1             |
| LLM             | Ollama (llama3.1 model, local) |
| Vector Store    | ChromaDB (port `8000`)         |
| Data Processing | Apache POI (Excel parsing)     |

🏗️ **Architecture & Processing Flow**

**A. Data Ingestion Layer (Knowledge Base)**
  Component: DdlService

  This layer builds the AI’s understanding of your database schema.

  Responsibilities

  **Scanning:** Monitors a configured directory (app.ddl-directory)
  Reads SQL files such as:
  create.sql
  alter.sql
  index.sql

  **Chunking:** Uses DdlBlockSplitter
  Breaks large DDL files into logical blocks (e.g., individual CREATE TABLE statements)

  **Embedding:** Converts each schema block into vector embeddings
  Uses the llama3.1 embedding model
  
  **Storage:** Stores embeddings in ChromaDB
  Collection name: SqlGenCollection
  
  **Architectural Note:** This ingestion runs at application startup when:
  app.ddl.ingest=true
  
  This pre-bakes schema knowledge, allowing the AI to retrieve only relevant schema fragments instead of loading the entire database definition into the prompt.

**B. Input Layer (User Request)**

Components:
GenerationController
ExcelService

Flow
Exposes a REST endpoint:
POST /api/generate

Accepts an Excel file as input
Parses structured reporting requirements from Excel rows
Extracted Fields
Report Attribute – What the user wants to see
Definition – Business logic or meaning
Data Source – Hints about table or column names

These fields become the semantic query used for schema retrieval.

**C. Orchestration Layer (The “Brain”)**

Component: SqlGenerationService
This is where the RAG pipeline comes together.

Responsibilities
Context Retrieval

For each Excel requirement row:
Performs a semantic search against ChromaDB

Uses:
Attribute + Definition + Data Source

Retrieves the most relevant DDL blocks (tables, columns, relationships)

Few-Shot Learning
Loads golden_examples.json
Provides known good Question → SQL examples
Improves consistency and correctness of generated SQL

Prompt Assembly
The final prompt includes:

Role: Expert MS SQL Server developer

Context: Retrieved DDL blocks (not the entire schema)

Task: Excel-based reporting requirements

Examples: Few-shot learning cases

SQL Generation

Sends the assembled prompt to Ollama

Uses the llama3.1 model

Produces a single, optimized MS SQL query

**⚙️ Key Configuration**

application.properties
# Ollama LLM
spring.ai.ollama.base-url=http://localhost:11434

# ChromaDB Vector Store
spring.ai.vectorstore.chroma.url=http://localhost:8000

# DDL ingestion control
app.ddl.ingest=true

# DDL source directory
app.ddl-directory=/path/to/ddl/files

**Configuration Notes**
Ollama runs locally for privacy and low latency
ChromaDB stores schema embeddings for fast semantic retrieval
DDL ingestion can be toggled off after initial indexing to speed up restarts

**🧠 Why This Design Works**

Schema-aware AI – The model understands your real database structure
Token-efficient – Only relevant DDL blocks are injected into prompts
Deterministic guidance – Few-shot examples reduce hallucinations
Business-friendly input – Excel remains the contract with stakeholders
Local & secure – No external LLM or cloud dependency required

**📌 Summary**

spring-ai-sql-gen is a production-ready RAG system that transforms Excel-based business requirements into accurate MS SQL queries by combining:
Spring Boot
Local LLMs (Ollama)
Vector databases (ChromaDB)
Schema-aware retrieval
Few-shot prompt engineering

It enables teams to move faster while maintaining correctness, transparency, and control over their data.

-----------------------------------------------------------------------------------------------------------------------

**Walkthrough - Spring AI SQL Generator**
Overview
This project is a Spring Boot application that uses Spring AI (Ollama) to generate MS SQL queries based on a DDL schema 
and an Excel file containing business requirements.

**Prerequisites**
Java 17+
Maven
Ollama running locally (default port 11434) with a model pulled (e.g., llama3)
chromaDB 0.5.5

**Project Structure**
src/main/java/.../service/DdlService.java: Reads DDL scripts.

src/main/java/.../service/ExcelService.java: Parses Excel files for "Report attribute", "Defination", "Data Source".

src/main/java/.../service/SqlGenerationService.java: Generates SQL using Spring AI.
Load the golden_examples.json file on startup.
Inject these examples into the LLM system prompt under a new section: ### Examples (Few-Shot Learning).

src/main/java/.../controller/GenerationController.java: REST API endpoint.

src/main/resources/golden_examples.json: Enhance LLM Knowledge with Few-Shot Learning.

**OLLAMA**
CMD>ollama --version
to list the models in local> ollama list, 
to run the model locally>ollama run <model_name> ex: ollama run deepseek

**To Run Chroma DB**
D:\SR_Project\AI_Proj>"C:\Users\akash.hanchinal\AppData\Local\Programs\Python\Python312\Scripts\chroma.exe" run --host localhost --port 8000 --path ./my_chroma_data
chroma DB status (Heart-beat) : http://localhost:8000/api/v1/heartbeat

**Manual Verification Steps**
Configure DDL Directory: Ensure application.properties points to your DDL folder:

**app.ddl-directory**=C:/Users/akash.hanchinal/.gemini/antigravity/scratch/ddl_files

**Start the Application:**
spring-ai-sql-gen>mvn spring-boot:run

**To Generate SQL**: 
curl -X POST -F "excelFile=@../sample_mapping.xlsx" http://localhost:8080/api/generate
Note: If using PowerShell, use Invoke-RestMethod or just use Postman.

Result: The response will be the generated MS SQL query based on the DDLs in the folder and the Excel requirements.

Next Steps
Replace the placeholder llama3 model in 
application.properties if needed.
Enhance the prompt in SqlGenerationService for more complex logic.

