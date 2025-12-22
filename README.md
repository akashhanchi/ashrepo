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
Load this JSON file on startup.
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

