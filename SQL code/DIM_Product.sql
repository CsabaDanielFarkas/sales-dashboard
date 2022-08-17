SELECT
	p.[ProductKey] AS ProductKey,
	p.[ProductAlternateKey] AS ProductItemCode,
	p.[ProductLine],
	p.[EnglishProductName] AS [Product Name],
	ps.ProductSubcategoryKey AS ProductSubcategoryKey,
	pc.ProductCategoryKey AS ProductCategoryKey,
	p.Color,
	p.Size,
	p.[ProductLine],
	p.ModelName,
	p.EnglishDescription,

	ISNULL (p.Status, 'Outdated') AS [Product Status]
FROM
	[AdventureWorksDW2019].[dbo].[DimProduct] AS p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey