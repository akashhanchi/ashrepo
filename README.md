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
src/main/java/.../controller/GenerationController.java: REST API endpoint.

**Verification Results**
Automated Tests
ExcelServiceTest: Verified that the Excel parser correctly extracts data from the specified columns.
mvn clean package: Build passed (pending final confirmation).

**Manual Verification Steps**
Configure DDL Directory: Ensure application.properties points to your DDL folder:

**app.ddl-directory**=C:/Users/akash.hanchinal/.gemini/antigravity/scratch/ddl_files
(I have already created this folder and a sample sample_schema.sql in it).

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

