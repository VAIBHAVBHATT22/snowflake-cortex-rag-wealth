-- Create stage for PDF documents

USE DATABASE WEALTH_RAG_DB;
USE SCHEMA RAG;

CREATE OR REPLACE STAGE PDF_STAGE;

-- Verify uploaded files
LIST @PDF_STAGE;
