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

### 2. Python Analysis  
- Normalized text (removed unicode issues).  
- Performed **EDA**: distributions of Age, Gender, Nationality, Flight Status.  
- Created **charts** (bar, line, pie, heatmap, scatter).  
- Conducted **hypothesis testing**:  
  - **T-Test** → to compare group means.  
  - **Chi-Square Test** → to check relationship between categorical variables.  

📸 *[Insert Screenshot: Python EDA/Charts here]*  

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

📸 *[Insert Screenshot: Example SQL query + result]*  

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

📸 *[Insert Screenshot: Final Power BI Dashboard]*  

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
