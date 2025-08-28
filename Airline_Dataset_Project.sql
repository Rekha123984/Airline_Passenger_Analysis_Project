-- Basic Data Cleaning

select * from Airline_Dataset where age is null;

select Passenger_ID, count(*) as Duplicate_Value from Airline_Dataset group by passenger_id having count(*)>1;

exec sp_rename 'airline_dataset.month_name','Departure_Month','column';
exec sp_rename 'airline_dataset.week_of_the_month','Departure_week_of_the_month','column';

--Total Passenger

select count(*) as Total_Passenger from Airline_Dataset;

--Number of Passenger from different Country

select country_name, count(*) as No_of_Passenger_in_Country from Airline_Dataset
group by country_name order by country_name asc;

--Number of passenger from TOP 10 Country

select top 10 country_name, count(*) as No_of_Passenger_in_Country from Airline_Dataset
group by country_name order by count(*) desc;

-- Total Flight Status

select flight_status, count(*) as Total_Number_of_Flight_Status from Airline_Dataset 
group by flight_status order by count(*) desc;

/*
Finding / Observation:
- Number of flight cancellations is higher than on-time flights.  
- However, the difference between them is not very large.  
- Suggestion: Airline needs to implement better practices to improve on-time performance 
  and reduce cancellations and delay.
*/

--Number of Passenger per Age Category

select case 
when age between 1 and 17 then 'Minor'
when age between 18 and 25 then 'Junior' 
when age between 26 and 59 then 'Adult'
else 'Senior' end as Age_Category,
count(*) as Passenger_Count
from Airline_Dataset
group by case
when age between 1 and 17 then 'Minor'
when age between 18 and 25 then 'Junior' 
when age between 26 and 59 then 'Adult'
else 'Senior' end
order by Passenger_Count desc;

/*
Finding / Observation:
-After categorizing passengers into Minor (1–17 yrs), Junior (18–25 yrs), Adult (26-59) and Senior (60+ yrs),
-The analysis shows that the Adult and Senior categories have a higher number of passengers compared to Minors.
-This indicates that the majority of airline travelers are working-age adults and older individuals, while the minor category is relatively low.
*/

--Passenger by Month

select Departure_Month, count(*) as Total_Passenger from Airline_Dataset
group by Departure_Month order by total_passenger desc;

/*
-The top 3 months with the highest number of passengers are August, May, and July.
-These months fall around summer and holiday seasons, which typically see increased travel due to vacations, school/college breaks, 
and tourism activities.
-This trend suggests that the airline experiences peak demand during mid-year months, so focusing on resource allocation, staffing, 
and flight frequency during this period can improve efficiency and customer satisfaction.
*/

--Total count of flight status per country

select Country_Name, Flight_Status, count(*) as Status_Count
from Airline_Dataset
group by Country_Name, Flight_Status
order by Status_Count desc;

/*
Finding / Observation:
- The United States, Australia, and Canada have the highest number of passengers.  
- These countries represent the largest customer base, which may indicate strong market presence 
  and frequent travel routes in these regions.
*/

--Maximum Age of the passenger in Asia Continent

select country_name, max(age) as Maximum_Age from Airline_Dataset
where continents='Asia' group by country_name having max(age)>80 order by country_name;

/*
Finding / Observation
-In the Asia continent, several countries have passengers with ages above 80 years.
-The highest passenger age recorded is 90 years in multiple countries such as Afghanistan, Azerbaijan, 
Bangladesh, Bhutan, and British Indian Ocean Territory.
-This indicates that the airline is serving senior passengers (80+ years) across Asia, showing accessibility for older travelers.
*/

--Cancellation by Month/Country

select country_name, Departure_Month, count(*) as Cancelled_Flights
from Airline_Dataset
where flight_status = 'Cancelled'
group by country_name, Departure_Month
order by Cancelled_Flights desc;

/*
Finding:
-Identifies countries and months with the highest cancellations.
-Airlines can investigate reasons (weather, strikes, technical issues) and improve planning.
-This insight directly connects to service reliability and customer satisfaction.
*/

--Number of flights landed On Time per Nationality

select top 5 nationality, count(*) as Landed_on_time from Airline_Dataset
where flight_status='On Time' group by nationality order by landed_on_time desc;

/*
-Here are the Top 5 Nationality whose flights landed on time.
-China ranks 1st in the list, meaning passengers from China have the highest number of flights that landed on time.
-The other top 4 nationalities also represent regions with a strong on-time performance, 
showing that these countries/airlines maintain operational efficiency.
*/