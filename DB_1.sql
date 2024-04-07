CREATE DATABASE Bank;
CREATE TABLE trans (
    CustomerID INT,
    TransDate DATETIME,
    TransType CHAR(1),
    Amount DECIMAL(10, 4)
);

INSERT INTO trans (CustomerID, TransDate, TransType, Amount) 
VALUES
    (1, '2005-01-01 00:00:00', 'C', 2000.0000),
    (1, '2005-02-01 00:00:00', 'C', 2200.0000),
    (1, '2005-03-02 00:00:00', 'D', 2000.0000),
    (2, '2005-01-01 00:00:00', 'C', 2000.0000),
    (2, '2005-02-01 00:00:00', 'D', 234.2230),
    (2, '2005-04-01 00:00:00', 'C', 2000.0000),
    (3, '2005-02-20 00:00:00', 'D', 200.2000),
    (3, '2005-02-21 00:00:00', 'D', NULL),
    (3, '2005-03-31 00:00:00', 'C', 334.5452),
    (4, '2005-04-30 00:00:00', 'C', 332.4520);
    
-- SELECT * FROM trans;
-- 1) Display Trans Table records with the specified columns

SELECT 
    CustomerID,
    TransDate,
    DATE_FORMAT(TransDate, '%W') AS WeekDay,
    CASE 
        WHEN TransType = 'C' THEN 'Credit'
        WHEN TransType = 'D' THEN 'Debit'
    END AS TransType,
    Amount
FROM 
    Trans;

 -- 2) Display Trans Table records with Credit Amount and Debit Amount: 
 
SELECT 
    CustomerID,
    DATE_FORMAT(TransDate, '%m/%d/%Y') AS TransDate,
    CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END AS `Credit Amount`,
    CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END AS `Debit Amount`
FROM 
    Trans;
    

-- 3) Display Trans Table records where TransDate Month is April 2005:
SELECT 
    CustomerID,
    DATE_FORMAT(TransDate, '%m/%d/%Y') AS TransDate,
    CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END AS `Credit Amount`,
    CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END AS `Debit Amount`
FROM 
    Trans
WHERE 
    MONTH(TransDate) = 4 
    AND YEAR(TransDate) = 2005;
    
-- 4) Display Trans Table records where TransDate is StartDate of the Month:

SELECT 
    CustomerID,
    DATE_FORMAT(TransDate, '%m/%d/%Y') AS TransDate,
    CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END AS `Credit Amount`,
    CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END AS `Debit Amount`
FROM 
    Trans
WHERE 
    TransDate = LAST_DAY(TransDate) - INTERVAL DAY(LAST_DAY(TransDate)) DAY + INTERVAL 1 DAY;

-- 5) Display Trans Table records where TransDate is EndDate of the Month:
SELECT 
    CustomerID,
    DATE_FORMAT(TransDate, '%m/%d/%Y') AS TransDate,
    CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END AS `Credit Amount`,
    CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END AS `Debit Amount`
FROM 
    Trans
WHERE 
    TransDate = LAST_DAY(TransDate);

-- 6)Display Trans Table records with Credit Total Amount and Debit Total Amount per CustomerID and Year:
SELECT 
    CustomerID,
    YEAR(TransDate) AS Year,
    COALESCE(SUM(CASE WHEN TransType = 'C' THEN Amount ELSE 0.00 END), 0.00) AS `Credit Total Amount`,
    COALESCE(SUM(CASE WHEN TransType = 'D' THEN Amount ELSE 0.00 END), 0.00) AS `Debit Total Amount`
FROM 
    Trans
GROUP BY 
    CustomerID,
    YEAR(TransDate);

    


