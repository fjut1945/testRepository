SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[MyView] AS
SELECT st.Name AS Territory, sp.BusinessEntityID
FROM Sales.SalesTerritory AS st INNER JOIN Sales.SalesPerson AS sp
ON st.TerritoryID = sp.TerritoryID 
GO
