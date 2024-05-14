SELECT 
    Has_Table_booking,
    CONCAT(ROUND(COUNT(has_table_booking) / (SELECT COUNT(*) FROM mainz_csv) * 100, 1), '%') AS Percentage 
FROM 
    mainz_csv
GROUP BY 
    has_table_booking;