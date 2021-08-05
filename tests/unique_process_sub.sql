SELECT CONCAT(PROCESS_ID, PROCESS_SUB_ID) as process_sub_unq 
FROM {{ ref('finance_process_control') }}
GROUP BY process_sub_unq HAVING COUNT(*) > 1