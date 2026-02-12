SELECT * FROM mytest.отчет2
WHERE SubdivisionName = 'Онлайн'
AND STR_TO_DATE(issueDateTimestamp, '%d.%m.%Y %H:%i')
    BETWEEN '2024-01-01' AND '2024-12-31';