SELECT  [CUSTOMER ID],[FIRST_NAME] , [LAST_NAME] ,[REGISTRATION DATE]
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer data$']

-- transaction analysis ----
    -- Total number of transactions per customer
SELECT  [CUSTOMER ID], COUNT(*) AS total_transactions
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer data$']
GROUP BY  [CUSTOMER ID];


-- Total amount spent by each customer
SELECT [CUSTOMER ID], SUM(SALES) Total_Spent
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer data$']
GROUP BY [CUSTOMER ID];


-- Time-based Analysis ---
-- Monthly new customer acquisition
  SELECT
    datepart(month, [REGISTRATION DATE]) AS month,
    COUNT(DISTINCT [CUSTOMER ID]) AS new_customers
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer $']
GROUP BY
    datepart(month, [REGISTRATION DATE])
ORDER BY
    datepart(month, [REGISTRATION DATE]);

-- Monthly total sales
    
	SELECT 
      datepart(month, [REGISTRATION DATE]) AS month,
    SUM([SALES]) AS total_sales
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer $']
GROUP BY 
   datepart(month, [REGISTRATION DATE])
ORDER BY 
    month;