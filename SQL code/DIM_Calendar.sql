/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      ,[EnglishDayNameOfWeek] AS DayName
      ,[DayNumberOfMonth] AS Day
      ,[WeekNumberOfYear] 
      ,[MonthNumberOfYear] AS Month
      ,[CalendarYear] AS Year
	  ,SUBSTRING(EnglishMonthName, 1, 3) AS MonthShort
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE 2020 <= CalendarYear AND CalendarYear <= 2021