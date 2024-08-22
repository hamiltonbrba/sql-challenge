# sql-challenge
Research project about people whom the company (Pewlett Hackard) employed during the 1980s and 1990s

### Overview
- **Data Modeling**: Designing the database schema, including creating an Entity Relationship Diagram (ERD) and defining the table structures.
- **Data Engineering**: Implementing the database schema in PostgreSQL, defining columns with appropriate data types, primary keys, foreign keys, and constraints.
- **Data Analysis**: Running SQL queries to answer specific questions related to employee data, such as listing employees' salaries, managers, and department details.

### Repository Structure
The repository is organized into the following directories and files:

- **/schema/**: Contains the SQL scripts for creating the database schema, including table creation scripts with primary keys, foreign keys, and `NOT NULL` constraints.
  - **`create_tables.sql`**: Script to create all necessary tables with defined columns, data types, and constraints.
  - **`erd_diagram.png`**: A visual representation of the Entity Relationship Diagram (ERD) for the database schema.

- **/data/**: Contains any CSV files or sample data used to populate the tables.
  - **`employees.csv`**: Sample data for the `employees` table.
  - **`salaries.csv`**: Sample data for the `salaries` table.
  - Other CSV files corresponding to the remaining tables.
    
- **/queries/**: Contains the SQL queries used for data analysis.
  - **`query1_employee_details.sql`**: Lists employee number, last name, first name, sex, and salary of each employee.
  - **`query2_hire_1986.sql`**: Lists the first name, last name, and hire date for employees hired in 1986.
  - **`query3_department_managers.sql`**: Lists the managers of each department with their department number, department name, employee number, last name, and first name.
  - Additional queries covering all required analysis tasks.
 
- **/results/**: Contains the outputs of the SQL queries, saved as CSV files.
  - **`employee_details.csv`**: Result of `query1_employee_details.sql`.
  - **`hire_1986.csv`**: Result of `query2_hire_1986.sql`.
  - Other CSV files corresponding to the outputs of the remaining queries.
 
### How to Navigate the Repository

1. **Database Schema**
   - Navigate to the **/schema/** directory to find the SQL script for creating the database schema (**`create_tables.sql`**). This script defines all tables, columns, and relationships.
   - The ERD diagram (**`erd_diagram.png`**) provides a visual representation of the database structure.

2. **Data**
   - The **/data/** directory contains sample data in CSV format that can be loaded into the database tables. Use the `COPY` or `INSERT` SQL commands to populate your tables with this data.

3. **Running Queries**
   - Go to the **/queries/** directory to find the SQL queries used for data analysis. Each query file is named according to the analysis task it performs.
   - You can run these queries in your PostgreSQL environment to generate the outputs.

4. **Reviewing Results**
   - The **/results/** directory contains the results of each query, saved as CSV files. You can review these files to see the outcomes of the SQL analysis.


## How to Run
To run this project locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/hamiltonbrba/sql-challenge.git
   ```
2. Set up your PostgreSQL database using the `create_tables.sql` script found in the `/schema/` directory.
3. Populate your tables with the provided data in the `/data/` directory.
4. Execute the SQL queries in the `/queries/` directory to perform the data analysis.
5. Review the results in the `/results/` directory.
