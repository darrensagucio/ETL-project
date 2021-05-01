# ETL-project
Extract:
Load CSV's through Pandas 

Transform:
Filtering desired columns.
Transforming 'date' column in only YYYY-MM-DD format
Renaming column names so engine can execute loading dataframes into SQL tables (SQLAlchemy does not read uppercase column names well).
Converting Tesla 'date' column to datetime. Start date in Tesla 'date' column needs to match Bitcoin's start date (2013-04-29). Filtered Tesla's 'date' column to 2013-04-29 to last entry in Dataframe. 
Reverting Tesla 'date' column to string so it can be later joined to the Bitcoin SQL Table as a foreign key.  

Load: 
Imported os to find .env file where postgres url with password was stashed. ex "DATABASE_URL"= "postgres:postgres/{password}@localhost:5432/etl-project-db"
Created SQL tables in pgAdmin 4.
Created engine connect with SQLAlchemy 
Extracted table names from database to check if engine was connected to correct databasee.
Checked if SQLAlchemy is reading SQL syntax. ex: fetchall()
Used SQL as a production database to create final tables.
