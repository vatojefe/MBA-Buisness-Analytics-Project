
-- Calculate Mean for each column
SELECT 
    AVG(CustomerID) AS Mean_CustomerID,
    AVG(Quantity) AS Mean_Quantity,
    AVG(Price) AS Mean_Price,
    AVG(DiscountApplied) AS Mean_DiscountApplied,
    AVG(TotalAmount) AS Mean_TotalAmount
FROM Transactions;

-- Calculate Median for each column
SELECT 
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY CustomerID) AS Median_CustomerID,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Quantity) AS Median_Quantity,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Price) AS Median_Price,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY DiscountApplied) AS Median_DiscountApplied,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY TotalAmount) AS Median_TotalAmount
FROM Transactions;

-- Calculate Standard Deviation for each column
SELECT 
    STDDEV(CustomerID) AS StdDev_CustomerID,
    STDDEV(Quantity) AS StdDev_Quantity,
    STDDEV(Price) AS StdDev_Price,
    STDDEV(DiscountApplied) AS StdDev_DiscountApplied,
    STDDEV(TotalAmount) AS StdDev_TotalAmount
FROM Transactions;

-- Calculate Mode for each column
-- Assuming mode as the most frequent value
-- For CustomerID, Quantity, and Price, mode is not commonly used in SQL; you may need to calculate it in the application layer.

-- Calculate Interquartile Range (IQR) for each column
SELECT 
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY CustomerID) - PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY CustomerID) AS IQR_CustomerID,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Quantity) - PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Quantity) AS IQR_Quantity,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Price) - PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Price) AS IQR_Price,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY DiscountApplied) - PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY DiscountApplied) AS IQR_DiscountApplied,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY TotalAmount) - PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY TotalAmount) AS IQR_TotalAmount
FROM Transactions;
