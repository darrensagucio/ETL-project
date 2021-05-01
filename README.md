# ETL-Project:

Team Members:

Darren Sagucio

Cecilia Aguayo


Project Proposal: 

Analyzing the correlation between two cryptocurrencies, Bitcoin and Litecoin, and the stock Price of Tesla from 2013 to 2020 with the purpose of comparing and finding interesting behaviors or trends during that time frame.


ETL


Extract:
Sources of Data:

•	Cryptocurrency stock information: CSV. Source, Kaggle. URL = https://www.kaggle.com/sudalairajkumar/cryptocurrencypricehistory .

•	TSLA stock information: Source, Kaggle. URL = https://www.kaggle.com/timoboz/tesla-stock-data-from-2010-to-2020 .

Load CSV's through Pandas.


Transform:

Filtering desired columns.
Transforming 'date' column to only YYYY-MM-DD format. Spliting the Date/Time 
Renaming column names so engine can execute loading dataframes into SQL tables, as SQLAlchemy does not read uppercase column names well.
Converting Tesla 'date' column to datetime. Start date in Tesla 'date' column needs to match Bitcoin's start date (2013-04-29). Filtered Tesla's 'date' column to 2013-04-29 to last entry in Dataframe. 
Reverting Tesla 'date' column to string so it can be later joined to the Bitcoin SQL Table as a foreign key.  


Load: 

Imported os to find .env file where postgres url with password was stashed. ex "DATABASE_URL"= "postgres:postgres/{password}@localhost:5432/etl-project-db".
Created SQL tables in pgAdmin 4.
Created engine connect with SQLAlchemy.
Extracted table names from database to check if engine was connected to correct databasee.
Checked if SQLAlchemy is reading SQL syntax. ex: fetchall().
Used SQL as a production database to create final tables.
