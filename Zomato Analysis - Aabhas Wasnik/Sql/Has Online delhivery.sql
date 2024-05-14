SELECT 
    Has_Online_delivery,
    CONCAT(ROUND(COUNT(Has_Online_delivery) / (SELECT COUNT(*) FROM mainz_csv) * 100, 1), '%') AS Percentage 
FROM 
    mainz_csv
GROUP BY 
    has_online_delivery;