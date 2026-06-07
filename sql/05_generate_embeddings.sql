-- Generate embeddings for chunks

INSERT INTO VECTOR_STORE
(
    DOC_ID,
    DOC_NAME,
    CHUNK_ID,
    CHUNK_TEXT,
    EMBEDDING
)

SELECT
    DOC_ID,
    DOC_NAME,
    CHUNK_ID,
    CHUNK_TEXT,

    SNOWFLAKE.CORTEX.EMBED_TEXT_768(
        'snowflake-arctic-embed-m',
        CHUNK_TEXT
    )

FROM DOCUMENT_CHUNKS;
