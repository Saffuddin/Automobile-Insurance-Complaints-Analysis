AUTOMOBILE INSURANCE PROJECT SUBMISSION
Project code: CDACL-001

FILES
01_Cleaned_Full_Dataset.csv - cleaned 1,358-row source data; fully blank FIELD11/FIELD12 removed.
02_Yearly_Analysis.csv - complaint categories and reported premiums grouped by filing year.
03_Company_Analysis.csv - company-level aggregated measures.
04_Top_5_Companies.csv - five companies selected by highest sum of reported premium values.
05_Top_10_Complaints.csv - companies with highest total complaint counts.
06_SQL_Analysis_Queries.sql - read-only SQL queries.
07_Analysis_Workbook.xlsx - data and summary sheets with charts.
08_Project_Analysis_Report.docx - written analysis and limitations.
09_Project_Presentation.pptx - presentation.
PNG files - chart images used in report/presentation.

POWER BI DASHBOARD GUIDE
1. Open Power BI Desktop -> Get Data -> Text/CSV.
2. Import 01_Cleaned_Full_Dataset.csv.
3. In Power Query, verify numeric types for Filing_Year, complaint fields, Premiums_Written and Ratio.
4. Add cards: distinct Company_Name count, row count, sum Total_Complaints, sum Upheld_Complaints.
5. Add line chart: Axis Filing_Year; Values Sum Total_Complaints.
6. Add stacked column chart: Axis Filing_Year; Values Sum Upheld_Complaints, Sum Question_of_Fact_Complaints, Sum Not_Upheld_Complaints.
7. Add line chart: Axis Filing_Year; Values Sum Premiums_Written. Label it "Sum of reported premiums (millions)".
8. Add bar chart: Axis Company_Name; Values Sum Total_Complaints; sort descending; apply Top N 10 filter.
9. For company comparison, use 04_Top_5_Companies.csv or filter the company summary to the selected five.
10. Add slicers for Filing_Year and Company_Name.

IMPORTANT METHODOLOGY NOTES
- The source dataset has 1,358 rows, 223 companies and filing years 2009-2016.
- FIELD11 and FIELD12 are completely blank and were excluded from the cleaned analysis copy.
- Premiums_Written is defined in the institute brief as the average of current and prior-year premiums written directly in NYS, in millions. Summing it across company records is a descriptive aggregation; do not describe it as a unique market-wide premium amount.
- The dataset does not include regulatory, macroeconomic or claims-frequency explanatory variables. Do not claim proven causes or a validated future forecast.
- The presentation and report are prepared from the uploaded dataset. Review them and add your own name/batch details before submission.
- This package does NOT contain a .pbix file. Build and save the actual interactive dashboard in Power BI Desktop using the guide above.
