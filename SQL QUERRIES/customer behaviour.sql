SELECT  [CUSTOMER ID],[FIRST_NAME] , [LAST_NAME] ,[REGISTRATION DATE]
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer data$']

    -- Total number of transactions per customer
SELECT  [CUSTOMER ID], COUNT(*) AS total_transactions
  FROM [Kaggle Customer DataBase].[dbo].['kaggle customer data$']
GROUP BY  [CUSTOMER ID];


