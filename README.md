# Snowflake Cortex RAG for Wealth Management

## Overview

Snowflake Cortex RAG for Wealth Management is an enterprise-grade Retrieval-Augmented Generation (RAG) application that enables financial advisors, operations teams, and wealth management professionals to query investment documents using natural language.
The solution leverages Snowflake Cortex AI, Vector Embeddings, Cortex Search, Snowpark Python, and Streamlit to provide context-aware responses from wealth management documentation.

---

## Business Problem

Wealth management organizations maintain thousands of pages of documentation including:

* Investment Policy Statements (IPS)
* Fund Fact Sheets
* Retirement Planning Guides
* Compliance Manuals
* Client Onboarding Documents
* Advisory Service Agreements
* Regulatory Guidelines

Finding relevant information manually is time-consuming and often requires searching across multiple repositories.

This solution enables users to ask questions in natural language and receive accurate responses grounded in approved enterprise documents.

---

## Solution Architecture

```text
PDF Documents
      │
      ▼
Snowflake Stage
      │
      ▼
Document Parsing
      │
      ▼
Raw Documents Table
      │
      ▼
Chunking Engine
      │
      ▼
Cortex Embeddings
      │
      ▼
Vector Store
      │
      ▼
Cortex Search
      │
      ▼
Cortex Complete
      │
      ▼
Streamlit User Interface
```

---

## Key Components

### 1. Document Ingestion

Upload wealth management documents into Snowflake.

Examples:

* Investment policies
* Fund prospectuses
* Compliance manuals
* Retirement planning guides

---

### 2. Document Parsing

Extract text from PDF documents using Snowflake Cortex.

Output:

* Structured document text
* Searchable content

---

### 3. Chunking Framework

Large documents are split into smaller chunks.

Benefits:

* Improved retrieval accuracy
* Better LLM context management
* Reduced token consumption

---

### 4. Vector Embeddings

Convert text into numerical vectors.

Benefits:

* Semantic understanding
* Meaning-based retrieval
* Improved search relevance

---

### 5. Vector Store

Store document chunks and embeddings.

Provides:

* Similarity search capability
* Knowledge base for RAG

---

### 6. Semantic Search

Retrieve relevant content using vector similarity.

Example:

User Question:

"What is the minimum investment amount for Fund A?"

System retrieves:

* Fund A prospectus section
* Investment requirements section

---

### 7. Retrieval-Augmented Generation

Retrieved context is sent to the LLM for answer generation.

Benefits:

* Reduced hallucinations
* Improved answer accuracy
* Document-grounded responses

---

### 8. Streamlit Interface

Simple advisor-facing chatbot interface.

Features:

* Natural language questions
* AI-generated responses
* Source-aware answers

---

## Technology Stack

| Component     | Technology       |
| ------------- | ---------------- |
| Data Platform | Snowflake        |
| AI Services   | Snowflake Cortex |
| Embeddings    | Cortex Embed     |
| Search        | Cortex Search    |
| LLM           | Cortex Complete  |
| Processing    | Snowpark Python  |
| Frontend      | Streamlit        |
| Language      | Python           |
| Storage       | Snowflake Tables |
| Querying      | SQL              |

---

## Repository Structure

```text
snowflake-cortex-rag-wealth/

├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_stage.sql
│   ├── 03_create_tables.sql
│   ├── 04_generate_embeddings.sql
│   ├── 05_vector_search.sql
│
├── app/
│   └── app.py
│
├── sample_data/
│   ├── investment_policy.pdf
│   ├── retirement_guide.pdf
│   ├── compliance_manual.pdf
│
├── docs/
│   ├── architecture.png
│   └── screenshots/
│
├── requirements.txt
│
└── README.md
```

## End-to-End Workflow

### Step 1

Upload PDF documents.

### Step 2

Parse documents and extract text.

### Step 3

Split documents into chunks.

### Step 4

Generate embeddings.

### Step 5

Store vectors in Snowflake.

### Step 6

Convert user question into embedding.

### Step 7

Perform semantic search.

### Step 8

Retrieve relevant document chunks.

### Step 9

Generate answer using Cortex Complete.

### Step 10

Display response in Streamlit.

---

## Business Benefits

* Faster document discovery
* Improved advisor productivity
* Reduced manual search effort
* Improved knowledge accessibility
* Enterprise AI governance
* Enhanced client service experience

---

## Future Enhancements

* Cortex Agents Integration
* Advisor Copilot
* Portfolio Recommendation Assistant
* Compliance Monitoring Assistant
* Multi-document Search
* Investment Research Assistant

---

## Skills Demonstrated

* Snowflake Cortex AI
* Retrieval-Augmented Generation (RAG)
* Vector Databases
* Semantic Search
* Snowpark Python
* Data Engineering
* Prompt Engineering
* Wealth Management Domain Expertise
* Generative AI Applications

---

## Author

Vaibhav Bhatt

Snowflake Data Engineer | Wealth Management Domain | Generative AI Enthusiast
