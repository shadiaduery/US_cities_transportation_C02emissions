# bootcamp-group_project-2

Group Team Members: Anna Rischitelli, Priya Anulacharam, Nataliia Sokolova, Vincent Durcan, and Shadia Duery

Datasources:
- US Energy Information Administration

Database Design:
- Table 1: State Name and State ID (StateNameAndID.csv)
- Table 2: Annual Electricity Generation (annual_generation_state_clean)
- Table 3: Nataliias data set
- Table 4: State name and state ID

Project Report:
#Complete write up: How to run your project - given your github repo, how would the instructional team recreate the final databases on their own computers? The report is estimated to be 500 words or less and should be in the README of your github repo.

EXTRACT: 
We pulled our data from the U.S. Energy Information Administration (eia). The eia has an entire section of data on U.S. electricity information including electric power plants, capacity, generation, fuel consumption, sales, prices and customers.

TRANSFORM:
state
- created a state ID table with state name and state ID to use as primary keys and connect other databases

yearly_generation_pd
- Changed 'Generation (Megawatts)' column to float type
- Dropped rows with already calculated totals in the 'Energy Source' column
- Exported to CSV to import to Postgres

yearly_capacity_pd
- Changed NaN values in 'Generators' column to 0 where there were zero generators present initally in 1990. 
- Changed NaN values in "Facilities" column to 0 where there were zero facilities present in inital years (rows).
 - Exported to CSV to import to Postgres

LOAD:

Tools:
- QuickDBD
- Jupyter Notebooks
- Postgres DB

Key Terms:
- Energy "Price" =  The average electricity rate is 13.19 cents per kilowatt hour (kWh). The average price a residential customer in the United States pays for electricity is 13.31 cents per kWh.

- Energy "Load" = The load factor percentage is derived by dividing the total kilowatt-hours (kWh) consumed in a designated period by the product of the maximum demand in kilowatts (kW) and the number of hours in the period.

- Energy "Reserves" = Calculated unused physical energy sources. Source examples are coal, gas, and oil. Known to exist with reasonable certainty.

- Energy "Capacity Factors" = It basically measures how often a plant is running at maximum power. A plant with a capacity factor of 100% means it's producing power all of the time. Nuclear has the highest capacity factor of any other energy source—producing reliable, carbon-free power more than 92% of the time in 2016.

- Nameplate capacity = also known as the rated capacity, nominal capacity, installed capacity, or maximum effect, is the intended full-load sustained output of a facility such as a power plant, electric generator, a chemical plant, fuel plant, metal refinery, mine, and many others.


--------------------------------------------------------------------------
Looking ahead...

Our Database Design was chosen to help us answer these potential questions for Project #3: 

1) What is a state's energy demand?
2) What are the sources of energy per state being used? (Wind, coal, gas, solar, etc.)
3) What is the current solar consumption and solar infrastructure per state?
    3a) In a certain point in time, solar currently is providing _% of the current energy needs of these states?
4) How much of a state's energy requirements can be met by solar?

--------------------------------------------------------------------------

Assignments for before Monday:
- Update Readme (Anna)
- Insert the Table 5.6.A. Average Price of Electricity to Ultimate Customers by End-Use Sector in jupyter notebook and clean out regional summary (Shadia)
- Upload that 20 year record csv to our repo (Nataliia)
- Create example schema map for Monday (Priya)
- Create Table 4 - State name and state ID (Vincent)


For Monday:
- Finalize database mapping (Monday together)
- Get final tables created and loaded in Postgress
- Create queries

For Wednesday:
- Complete write up: How to run your project - given your github repo, how would the instructional team recreate the final databases on their own computers? The report is estimated to be 500 words or less and should be in the README of your github repo.

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




