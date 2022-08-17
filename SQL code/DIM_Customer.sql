/****** Script for SelectTopNRows command from SSMS  ******/
SELECT c.CustomerKey AS CustomerKey
      ,c.FirstName
      ,c.LastName
	  ,c.FirstName + ' ' + c.LastName AS [Full Name]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.DateFirstPurchase
	  ,g.City AS [Customer City]
 FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON c.GeographyKey = g.GeographyKey
ORDER BY
	CustomerKey ASC