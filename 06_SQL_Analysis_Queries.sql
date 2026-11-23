-- Automobile Insurance Complaints Project
-- Database: project_automobile_insurance
-- Table: auto_table
-- Run read-only analysis queries in MySQL Workbench.

USE project_automobile_insurance;

-- 1. Dataset overview
SELECT COUNT(*) AS total_records,
       COUNT(DISTINCT Company_Name) AS total_companies,
       MIN(Filing_Year) AS first_year,
       MAX(Filing_Year) AS last_year
FROM auto_table;

-- 2. Complaint categories by year
SELECT Filing_Year,
       SUM(Upheld_Complaints) AS total_upheld,
       SUM(Question_of_Fact_Complaints) AS total_question_of_fact,
       SUM(Not_Upheld_Complaints) AS total_not_upheld,
       SUM(Total_Complaints) AS total_complaints
FROM auto_table
GROUP BY Filing_Year
ORDER BY Filing_Year;

-- 3. Reported premium totals by year
SELECT Filing_Year,
       ROUND(SUM(Premiums_Written), 2) AS summed_reported_premiums
FROM auto_table
GROUP BY Filing_Year
ORDER BY Filing_Year;

-- 4. Top 5 companies by summed reported premium
SELECT Company_Name,
       ROUND(SUM(Premiums_Written), 2) AS total_premium_reported,
       SUM(Total_Complaints) AS total_complaints,
       SUM(Upheld_Complaints) AS total_upheld,
       ROUND(AVG(Ratio), 4) AS average_ratio
FROM auto_table
GROUP BY Company_Name
ORDER BY total_premium_reported DESC
LIMIT 5;

-- 5. Top 10 companies by total complaints
SELECT Company_Name,
       SUM(Total_Complaints) AS total_complaints,
       SUM(Upheld_Complaints) AS total_upheld
FROM auto_table
GROUP BY Company_Name
ORDER BY total_complaints DESC
LIMIT 10;

-- 6. Complaint categories by company
SELECT Company_Name,
       SUM(Upheld_Complaints) AS upheld,
       SUM(Question_of_Fact_Complaints) AS question_of_fact,
       SUM(Not_Upheld_Complaints) AS not_upheld,
       SUM(Total_Complaints) AS total_complaints
FROM auto_table
GROUP BY Company_Name
ORDER BY total_complaints DESC;
