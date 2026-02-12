SELECT
    Status as `Статус`,
    COUNT(ClientID) AS `Количество клиентов`,
    SUM(LoanAmount) AS `Сумма выданных займов`
FROM mytest.отчет2
GROUP BY Status;