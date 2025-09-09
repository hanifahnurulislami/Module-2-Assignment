# Employee Salary Data Analysis

## Project Overview

This project is part of a "Module 2 Assignment" and was developed using Python and R. The main objective of this assignment is to perform various data processing, error handling, and file management operations using both programming languages. The provided employee salary dataset is used for this analysis.

## File List

* `Assignment_2.ipynb`: A Jupyter Notebook containing all the Python code for data analysis.
* `Assignment_2.R`: An R script used to open and display the data exported from Python.
* `Total.csv`: The original dataset file containing employee salary data.

---

## How to Use the Code

### 1. Environment Setup

Make sure you have both Python and R installed on your computer. It is recommended to use **Jupyter Notebook** for the Python code and **RStudio** for the R script.

### 2. Running the Python Code

1. Place the `Total.csv` and `Assignment_2.ipynb` files in the same directory.
2. Open `Assignment_2.ipynb` in Jupyter Notebook.
3. Run each code cell sequentially.
4. The output for each step will be displayed directly below the executed cell.

### 3. Running the R Code

1. After running all the steps in the Python notebook, a zip file named `Employee_Profile.zip` will be created. Ensure this file is in your working directory.
2. Open the `Assignment_2.R` file in RStudio.
3. Change the `setwd()` line at the beginning of the script to your project's directory path.
   ```R
   setwd("path/to/your/project/folder")
    ```
4.  Run the entire script. It will automatically unzip the file, read the CSV data, combine it into a single data frame, and display a data preview in the console.

---

## Analysis & Results

### `Assignment_2.ipynb` (Python)

The following tasks were completed in the Python notebook:

* **Data Import**: The `Total.csv` dataset was successfully imported using the **Pandas** library.
* **Employee Search Function**: A `get_employee_details()` function was developed to search for an employee's details by name.
* **Data Processing**: Various functions were created to analyze the data, including:
    * Finding the highest-paid and lowest-paid employees.
    * Calculating the average salary for all employees.
    * Counting the number of employees in a specific year.
    * Calculating the total annual salary.
* **Error Handling**: `try-except` blocks and data validation were implemented to gracefully handle potential errors such as empty data, missing columns, or invalid values (e.g., negative salaries).
* **Data Export**: An `export_employee_to_zip()` function was created to export a specific employee's data into a CSV file and save it within a compressed zip file.

### `Assignment_2.R` (R)

* **Data Import & Extraction**: The R script successfully reads the `Employee_Profile.zip` file created by the Python code.
* **Data Combination**: Using `lapply` and `do.call` functions, all the CSV files from the unzipped folder were successfully combined into a single data frame.
* **Data Display**: A neat preview of the data is shown in the console using the `pander` library.

---
