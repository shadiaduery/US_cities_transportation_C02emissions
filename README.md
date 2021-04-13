## Study on top 50 larges cities in the US and its transportation carbon emissions

Group Team Members: Anna Rischitelli, Priya Arunachalam, Nataliia Sokolova, Vincent Durcan, and Shadia Duery

###### Datasources:
- US Energy Information Administration (https://www.eia.gov/electricity/data.php)

###### Database Design:
- Table 1: State Name and State ID (StateNameAndID.csv)
- Table 2: Annual Electricity Generation (annual_generation_state_clean)
- Table 3: Existing Electrical Capacity (existcapacity_annual_clean.csv)

## Project Report:
For this project (and next project) we are looking to analyze energy usage across different states, sectors, and energy type. Below is an outline of each step of our ETL process, along with a summary of potental questions for Project #3.

**EXTRACT**: 
We pulled our data from the U.S. Energy Information Administration (eia). The eia has an entire section of data on U.S. electricity information including electric power plants, capacity, generation, fuel consumption, sales, prices and customers. Both sets of data that we pulled from the eia were in CSV file formats. The first table (StateNameAndID.csv) was a manual creation where we tied two lists together to use as a key in our database design.

**TRANSFORM**: After collecting the data, we had three tables that covered the data that we may need for Project #3. The first table (StateNameAndID.csv) was created to tie a state's name with a state's "ID" (ex: Oregon -> OR, Washington -> WA) to use as primary keys and connect our other tables.

When we loaded the second CSV into Jupyter to work in Pandas, the second table (yearly_generation_pd) had individual summary rows in the initial dataframe in one columns: 'Energy Source' column. We had to identify and drop the rows with already calculated totals in the 'Energy Source' column using:

`yearly_generation_pd = yearly_generation_pd.loc[yearly_generation_pd["Energy Source"]!="Total"]`

This cleaned out the rows that were acting as sub-totals in our data. Also, we changed the data type in the 'Generation (Megawatts)' to float type so we can do accurate queries and calculations later. Lastyle, we exported to CSV to import into Postgress.

When we loaded the third CSV into Jupyter, the third table (yearly_capacity_pd) had null values in place of 0's in multiple columns. In the columns 'Generators' and 'Facilities', there were NaN values where there were no generators or facilities present in the state during that year. Therefore, we changed the NaN values in 'Generators' column to 0 where there were zero generators present initally in 1990, and we changed NaN values in "Facilities" column to 0 where there were zero facilities present in inital years (rows). We used a line of code like this for the replacement: 

`yearly_capacity_pd['Generators'] = yearly_capacity_pd['Generators'].replace(np.nan, 0)`

Lastly, we exported to CSV to import to Postgres.

**LOAD**: We loaded our three tables into Postgres using the query window and writing the code to create and populate the code. Before adding the data to the tables in our schema, we used QuickDBD to map our tables and keys.

We realized after a couple test queries that we would like to go a little deeper to find the sectors/users of this energy. Another issue that we ran into was that with our current datasets, there aren't clear connections between the tables to create primary keys. This can be addressed in Project #3 when we determine exactly what questions we are answering and what data we will need to process.

**GROUP SUMMARY**:
We worked together as a group for 90% of this project - we were extremely efficient with our time by having one person share their screen and then we all talked through the problems and the data cleaning and that's why there are only a few commits from a couple people.


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
## Looking ahead...

Our Database Design was chosen to help us answer these potential questions for Project #3: 

1) What is a state's energy demand?
2) What are the sources of energy per state being used? (Wind, coal, gas, solar, etc.)
3) What is the current solar consumption and solar infrastructure per state?
    3a) In a certain point in time, solar currently is providing _% of the current energy needs of these states?
4) How much of a state's energy requirements can be met by solar?

Our second plan for Project #3 is to potentially answer this question: Is it currently possible to power the city of Portland with only renewable energy for a week, or a month?

To answer this question, we would need these data sets and analysis:
1. Current energy needs by the city of Portland (energy demand)
2. Energy sources available in the city to identity the renewable energy sources
3. Determine to max capacity that these renewable energies sources can run to paired with temporal data (how much energy can be produce by energy source, and when)
4. Calculate how much of the total energy consumption needs could be met by a mix of renewable energy sources
--------------------------------------------------------------------------
