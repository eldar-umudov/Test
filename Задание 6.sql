SELECT
  r2.NumContract AS `Номер контракта`,
  r2.ContractID  AS `ID договора`,
  r2.SubdivisionName AS `Регион выдачи`,
  STR_TO_DATE(r2.issueDateTimestamp, '%d.%m.%Y %H:%i') AS `Дата выдачи`,
  r2.LoanAmount  AS `Сумма выдачи`,
  r2.Status      AS `Статус`,
  r1.`Задолженность по ОД`,
  r1.`Задолженность по %%`,
  r1.`Кол-во дней просрочки, фактическое`,
  STR_TO_DATE(r2.DateStatus, '%d.%m.%Y %H:%i') AS `Дата последнего платежа`,
  r2.SumLastPay AS `Сумма последнего платежа`
FROM `mytest`.`отчет2` r2
LEFT JOIN `mytest`.`отчет1` r1
  ON r1.`Номер контракта` = r2.NumContract;