LIST @DATA_WAREHOUSE.STAGING_LD.AZURE_DATA_LAKE_LD PATTERN='^QA/.*';

WITH file_list AS (
    SELECT
        $1 AS full_path
    FROM TABLE(RESULT_SCAN(LAST_QUERY_ID()))
)
SELECT DISTINCT SPLIT_PART(full_path, '/', 6) AS table_name
FROM file_list
WHERE table_name IS NOT NULL
ORDER BY table_name;
