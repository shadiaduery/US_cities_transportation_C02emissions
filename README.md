# bootcamp-group_project-2

Group Team Members: Anna Rischitelli, Priya Anulacharam, Nataliia Sokolova, Vincent Durcan, and Shadia Duery

Question: 
1) What is a state's energy demand?
2) What are the sources of energy per state being used? (Wind, coal, gas, solar, etc.)
Bonus** 2A) How much of a state's energy requirements can be met by solar?


Table 1 - average price by sector (remember to remove the summary rows for the regions)
Table 2 - Annual monthly billing by state
Table 3 - Nataliias data set
Table 4 - State name and state ID

Key points:
- Demand overtime by sector
- Type of energy sources over time


Assignments for before Monday:
- Update Readme (Anna)
- Insert the Table 5.6.A. Average Price of Electricity to Ultimate Customers by End-Use Sector in jupyter notebook and clean out regional summary (Shadia)
- Upload that 20 year record csv to our repo (Nataliia)
- Create example schema map for Monday (Priya)


For Monday:
- Finalize database mapping (Monday together)

For Wednesday:
- Complete write up: How to run your project - given your github repo, how would the instructional team recreate the final databases on their own computers? The report is estimated to be 500 words or less and should be in the README of your github repo.




Other notes:
Goals:
 - % of total need can be provided by solar at the currently capacity
 Main (from Eric): How much of a state's energy requirements can be met by solar?
    - State's current energy consumption 
    - Current solar consumption per state
    - Current solar infrastructure of the states
    - In a point in time, solar currently is providing _% of the current energy needs of these states

    - Monthy consumption per state by sector

-------------------------------------------
Business Questions:

Do rates of covid19 differ based on local policies implemented (where do we get data of locked down period)


Steps for Project Completion:

Datasources:

-John Hopkings University Covid19 data
-County information and landsize for population density calculations

Data Analysis:

- Timeframe: January - October
- We will compare data by county from two States that we know applied different Covid19 lockdown policies: CA and TX
- Rate of infection (covid cases per day)
- Total number of covid19 cases per State per month
- Heat map of COVID cases per county (per state)
- Scatter plots that compare COVID per capita and population density by county (by state)


Visualizations:

- Heat Map 
- Scatter plot to show log relationships for Total Cases for CA & TX vs. Time
- Line graph of New Daily Cases for CA & TX vs. Time
- Scatter plot for CA - Population Density vs. COVID Cases per Capita w/ linear regression 
- Saatter plot for TX - Population Density vs. COVID Cases per Capita w/ linear regression

Tools:

- jupyter notebook
- csv file
- libraries
- PGAdmin
- PostgreSQL
- 


-----------------------------------------------------------------------


Project Proposal

Before you start writing any code, remember that you only have one week to complete this project. View this project as a typical assignment from work. Imagine a bunch of data came in and you and your team are tasked with migrating it to a production data base.
Take advantage of your Instructor and TA support during office hours and class project work time. They are a valuable resource and can help you stay on track.

Finding Data
Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:


data.world

Kaggle

Google's dataset search


You can also use APIs or data scraped from the web. However, get approval from your instructor first. Again, there is only a week to complete this!

# Data Cleanup & Process Analysis
Imagine that you have a data analysis question at hand and some raw data. (You can even use the same overall data analysis question as you used in project 1, provided it meets the data requirements from above!) How would you take the raw data and prepare it for analysis? Make sure to plan out the following:
The sources of data that you will extract from.

The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

The type of final production database to load the data into (relational or non-relational).

The final tables or collections that will be used in the production database.

Note that this project does NOT require actual data analysis. We will not be preparing visualizations, statistical analysis, etc. Instead, it's meant to provide insight into the work that is required to prepare data for analysis. However, it's very useful to have a data analysis topic in mind because that will help drive the design of your database as well as the data cleaning steps.

# Project Report
At the end of the week, your team will submit a final report that describes the following:

Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

Transform: what data cleaning or transformation was required.

Load: the final database, tables/collections, and why this was chosen.

If you "broke the rules" of relational databases (primary keys, foreign keys, normalization, etc.), why did you break those?

How to run your project - given your github repo, how would the instructional team recreate the final databases on their own computers?

The report is estimated to be 500 words or less and should be in the README of your github repo. Although each group will have a single repo, every group member must submit a link to Bootcampspot. No presentation and no presentation materials are required.


Key Terms:

Energy "Price" =  The average electricity rate is 13.19 cents per kilowatt hour (kWh). The average price a residential customer in the United States pays for electricity is 13.31 cents per kWh.

Energy "Load" = The load factor percentage is derived by dividing the total kilowatt-hours (kWh) consumed in a designated period by the product of the maximum demand in kilowatts (kW) and the number of hours in the period.

Energy "Reserves" = Calculated unused physical energy sources. Source examples are coal, gas, and oil. Known to exist with reasonable certainty.

Energy "Capacity Factors" = It basically measures how often a plant is running at maximum power. A plant with a capacity factor of 100% means it's producing power all of the time. Nuclear has the highest capacity factor of any other energy source—producing reliable, carbon-free power more than 92% of the time in 2016.


