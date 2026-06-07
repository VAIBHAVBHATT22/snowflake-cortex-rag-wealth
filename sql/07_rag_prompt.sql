-- Generate final answer using retrieved context

SET QUESTION =
'What is the minimum investment amount for Fund A?';

WITH TOP_CHUNKS AS
(
SELECT
CHUNK_TEXT

FROM VECTOR_STORE

LIMIT 5
),

CONTEXT AS
(
SELECT
LISTAGG(
CHUNK_TEXT,
' '
)
WITHIN GROUP(
ORDER BY CHUNK_TEXT
) AS CONTEXT_TEXT

FROM TOP_CHUNKS
)

SELECT

SNOWFLAKE.CORTEX.COMPLETE(

'llama3.1-70b',

CONCAT(
'Answer only from provided context. ',
'Context: ',
CONTEXT_TEXT,
' Question: ',
$QUESTION
)

) AS ANSWER

FROM CONTEXT;
