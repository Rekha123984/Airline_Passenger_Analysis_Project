# 📌 Airline Passenger Analysis Project  

## 📖 Project Overview  
This project analyzes an **Airline Passenger Dataset (98,000+ rows, Kaggle)** using **Excel, Python, SQL, and Power BI**.  
The goal is to perform **data cleaning, analysis, statistical testing, and visualization** to extract meaningful insights about passengers, flight status, and travel trends.  

---

## 🔹 Tools & Technologies  
- **Excel** → Initial data cleaning (duplicates, data types, derived columns like `Month_Name`, `Week_of_Month`).  
- **Python (Pandas, Matplotlib, Seaborn, Stats)** → Unicode cleaning, exploratory data analysis (EDA), hypothesis testing, data export.  
- **SQL** → Aggregations, grouping, advanced queries for deeper analysis.  
- **Power BI** → Interactive dashboards with DAX measures for insights.  

---

## 🔹 Project Workflow  

### 1. Data Preparation  
- Dataset had **unicode characters** → cleaned using Python.  
- Removed duplicates, corrected data types, and created new time-based columns (`Month_Name`, `Week_of_Month`).  
- Final cleaned dataset exported to CSV & SQL Server.  
*<img width="1004" height="497" alt="image" src="https://github.com/user-attachments/assets/8dbcf3a4-1211-48eb-8553-243788d4bd26" />*


### 2. Python Analysis  
- Normalized text (removed unicode issues).  
- Performed **EDA**: distributions of Age, Gender, Nationality, Flight Status.  
- Created **charts** (bar, line, pie, heatmap, scatter).  
- Conducted **hypothesis testing**:  
  - **T-Test** → to compare group means.  
  - **Chi-Square Test** → to check relationship between categorical variables.  

📸 *<img width="1287" height="295" alt="image" src="https://github.com/user-attachments/assets/6b515cda-d6e5-4588-9e5a-fcaff340b7de" />*  
*<img width="1038" height="426" alt="image" src="https://github.com/user-attachments/assets/1fad1df0-ce33-4172-91df-bfd4cfc267e8" />*
*<img width="1087" height="686" alt="image" src="https://github.com/user-attachments/assets/2f903254-0754-45bd-a66c-e85e9523032a" />*
*<img width="842" height="477" alt="image" src="https://github.com/user-attachments/assets/14c756c3-301d-4a90-8c3c-7920bc01f5e6" />*
*<img width="1085" height="782" alt="image" src="https://github.com/user-attachments/assets/2b8c8035-05c4-45bf-a7bb-03f5afe0d3f3" />*
*<img width="1780" height="463" alt="image" src="https://github.com/user-attachments/assets/1be6f2e6-b63b-4cee-9766-2220ae7ddebe" />*
*<img width="1781" height="117" alt="image" src="https://github.com/user-attachments/assets/999624c0-044c-4693-8507-ab2e5c1d5a59" />*
*<img width="1776" height="458" alt="image" src="https://github.com/user-attachments/assets/022ae533-26fa-4f41-ab56-c54ac1f10ff0" />*
*<img width="1783" height="128" alt="image" src="https://github.com/user-attachments/assets/7aa5e3cf-132a-43ee-af8a-dfeeb43260d8" />*









---

### 3. SQL Analysis  
- Wrote queries for:  
  - Total passengers  
  - Passengers by Country & Top 10 countries  
  - Flight Status counts  
  - Age Category distribution  
  - Seasonal analysis by Departure Month  
  - On-time vs Cancelled flights  
  - Senior passengers in Asia (80+ years old)  
  - Top 5 Nationalities for On-Time flights  

📸 *<img width="1458" height="520" alt="image" src="https://github.com/user-attachments/assets/3ec03f06-1ad3-40c5-b6ec-b7a9c2cd8a24" />*
*<img width="261" height="168" alt="image" src="https://github.com/user-attachments/assets/45fa14fc-45f5-4dc2-b063-4b1506a02537" />*
*<img width="1202" height="523" alt="image" src="https://github.com/user-attachments/assets/4a4d3030-339b-49e7-abd3-1105096ff7af" />*

 

🔑 **Key Findings from SQL**:  
- Adults & Seniors dominate travel (>70%).  
- Top 3 months for travel: **August, May, July** (holiday season).  
- U.S., Australia, and Canada have the highest passengers.  
- China has the highest **on-time flight record**.  
- Flight cancellations cluster in certain countries/months.  

---

### 4. Power BI Dashboard  
- Built an interactive dashboard with:  
  - **KPIs**: Total Passengers, Avg Age, % On-Time Flights.  
  - **Charts**:  
    - Passengers by Age Category  
    - Top Countries by Passengers  
    - Flight Status distribution  
    - Monthly passenger trends  
    - Map of passenger distribution by country  
    - Nationality-wise on-time flights  

📸 *<img width="1324" height="741" alt="image" src="https://github.com/user-attachments/assets/7d4c7d1b-b2c7-46ea-bf4c-a5e9b3566d6c" />*  

🔑 **Insights from Dashboard**:  
- **China** contributes the largest share of passengers (~37%).  
- **Adults (26–59 yrs)** are the main traveler segment.  
- ~66% flights are **On Time**, ~34% delayed/cancelled.  
- Passenger volume **peaks in May, July, and August** (vacation season).  
- **San Pedro Airport** is the busiest hub.  

---

## 🔹 DAX Measures Used  
```DAX
Total Passengers = COUNTROWS(Airline_Dataset)

Avg Ticket Price = AVERAGE(Airline_Dataset[TicketPrice])

Total Revenue = SUM(Airline_Dataset[TicketPrice])

Passenger Growth % =
DIVIDE(
    [Total Passengers] - CALCULATE([Total Passengers], DATEADD(Airline_Dataset[Date], -1, MONTH)),
    CALCULATE([Total Passengers], DATEADD(Airline_Dataset[Date], -1, MONTH))
)
# Airline_Passenger_Analysis_Project
