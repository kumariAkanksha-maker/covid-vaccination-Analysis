### 🔍 : Analyzes with SQL

I imported the cleaned_data.csv file into a SQL database (like MySQL or SQLite) and wrote basic queries to analyze India’s COVID-19 vaccination trends.

```sql
-- 1. Total vaccinations by state
SELECT State_or_Date, SUM(Total_Doses) AS Total_Vaccinations
FROM cleaned_data
GROUP BY State_or_Date
ORDER BY Total_Vaccinations DESC;

-- 2. Total First and Second Doses
SELECT SUM(First_Dose) AS Total_First_Dose,
       SUM(Second_Dose) AS Total_Second_Dose
FROM cleaned_data;

-- 3. Daily/Monthly vaccination trend (if 'State_or_Date' contains dates)
SELECT State_or_Date, SUM(Total_Doses) AS Total_Vaccinations
FROM cleaned_data
GROUP BY State_or_Date
ORDER BY State_or_Date;
