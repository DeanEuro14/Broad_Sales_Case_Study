--Daily Sales Price per Unit
SELECT 
  Date,
  Sales,
  Quantity_Sold,
  Sales / IFNULL(Quantity_Sold, 0) AS Unit_Sales_Price
FROM  "BRIGHTLIGHT"."PUBLIC"."SALES_CASE_STUDY";

--Average Unit Sales Price
SELECT 
  SUM(Sales) / IFNULL(SUM(Quantity_Sold), 0) AS Avg_Unit_Sales_Price
FROM "BRIGHTLIGHT"."PUBLIC"."SALES_CASE_STUDY";

--Daily % Gross Profit
SELECT 
  Date,
  Sales,
  Cost_of_Sales,
  ((Sales - Cost_of_Sales) / IFNULL(Sales, 0)) * 100 AS Daily_Gross_Profit_Percent
FROM "BRIGHTLIGHT"."PUBLIC"."SALES_CASE_STUDY";

--Daily % Gross Profit Per Unit
SELECT 
  Date,
  ((Sales - Cost_of_Sales) / IFNULL(Quantity_Sold, 0)) AS Gross_Profit_Per_Unit
FROM "BRIGHTLIGHT"."PUBLIC"."SALES_CASE_STUDY";
