## bootcamp-group_project-2

Group Team Members: Anna Rischitelli, Priya Anulacharam, Nataliia Sokolova, Vincent Durcan, and Shadia Duery

###### Datasources:
- US Energy Information Administration

###### Database Design:
- Table 1: State Name and State ID (StateNameAndID.csv)
- Table 2: Annual Electricity Generation (annual_generation_state_clean)
- Table 3: Existing Electrical Capacity (existcapacity_annual_clean.csv)

## Project Report**:
#Complete write up: How to run your project - given your github repo, how would the instructional team recreate the final databases on their own computers? The report is estimated to be 500 words or less and should be in the README of your github repo.

**EXTRACT**: 
We pulled our data from the U.S. Energy Information Administration (eia). The eia has an entire section of data on U.S. electricity information including electric power plants, capacity, generation, fuel consumption, sales, prices and customers. Both sets of data that we pulled from the eia were in CSV file formats. The first table (StateNameAndID.csv) was a manual creation where we tied two lists together to use as a key in our database design.

**TRANSFORM**: After collecting the data, we had three tables that covered the data that we may need for Project #3. The first table (StateNameAndID.csv) was created to tie a state's name with a state's "ID" (ex: Oregon -> OR, Washington -> WA) to use as primary keys and connect our other tables.

When we loaded the second CSV into Jupyter to work in Pandas, the second table (yearly_generation_pd) had individual summary rows in the initial dataframe in one columns: 'Energy Source' column. We had to identify and drop the rows with already calculated totals in the 'Energy Source' column using:

yearly_generation_pd = yearly_generation_pd.loc[yearly_generation_pd["Energy Source"]!="Total"]

This cleaned out the rows that were acting as sub-totals in our data. Also, we changed the data type in the 'Generation (Megawatts)' to float type so we can do accurate queries and calculations later. Lastyle, we exported to CSV to import into Postgress.

When we loaded the third CSV into Jupyter, the third table (yearly_capacity_pd) had null values in place of 0's in multiple columns. In the columns 'Generators' and 'Facilities', there were NaN values where there were no generators or facilities present in the state during that year. Therefore, we changed the NaN values in 'Generators' column to 0 where there were zero generators present initally in 1990, and we changed NaN values in "Facilities" column to 0 where there were zero facilities present in inital years (rows). We used a line of code like this for the replacement: 

yearly_capacity_pd['Generators'] = yearly_capacity_pd['Generators'].replace(np.nan, 0)

Lastly, we exported to CSV to import to Postgres.

**LOAD**: We loaded our three tables into Postgres using the query window and writing the code to create and populate the code. Before adding the data to the tables in our schema, we used QuickDBD to map our tables and keys.


## Tools:
- QuickDBD
- Jupyter Notebooks
- Postgres DB

## Key Terms:
- Energy "Price" =  The average electricity rate is 13.19 cents per kilowatt hour (kWh). The average price a residential customer in the United States pays for electricity is 13.31 cents per kWh.

- Energy "Load" = The load factor percentage is derived by dividing the total kilowatt-hours (kWh) consumed in a designated period by the product of the maximum demand in kilowatts (kW) and the number of hours in the period.

- Energy "Reserves" = Calculated unused physical energy sources. Source examples are coal, gas, and oil. Known to exist with reasonable certainty.

- Energy "Capacity Factors" = It basically measures how often a plant is running at maximum power. A plant with a capacity factor of 100% means it's producing power all of the time. Nuclear has the highest capacity factor of any other energy source—producing reliable, carbon-free power more than 92% of the time in 2016.

- Nameplate capacity = also known as the rated capacity, nominal capacity, installed capacity, or maximum effect, is the intended full-load sustained output of a facility such as a power plant, electric generator, a chemical plant, fuel plant, metal refinery, mine, and many others.


--------------------------------------------------------------------------
###### Looking ahead...

Our Database Design was chosen to help us answer these potential questions for Project #3: 

1) What is a state's energy demand?
2) What are the sources of energy per state being used? (Wind, coal, gas, solar, etc.)
3) What is the current solar consumption and solar infrastructure per state?
    3a) In a certain point in time, solar currently is providing _% of the current energy needs of these states?
4) How much of a state's energy requirements can be met by solar?

--------------------------------------------------------------------------
