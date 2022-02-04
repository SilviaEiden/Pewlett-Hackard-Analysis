# Pewlett-Hackard Employee Database Analysis

## Overview

### Purpose

The purpose of this analysis is to help Bobby, a promising HR analyst, determine the number of retiring employees per job title, and identify employees who are eligible to participate in a mentorship program at Pewlett-Hackard.

Pewlett-Hackard is a large company employing thousands of people, whom many are preparing to retire soon. An exploratory analysis on employee data was completed using PostgreSQL to generate data tables to showcase to management.

This employee database analysis can be used to inform discussion and assist management for the “silver tsunami” as many current employees reach retirement age.

## Results

### Datasets and Files

The employee database analysis is based on the following datasets: 

* Retirement Titles: [city_data](Data/city_data.csv)
* Unique Titles: [ride_data](Data/ride_data.csv)
* Retiring Titles: [city_data](Data/city_data.csv)
* Mentorship Eligibility: [ride_data](Data/ride_data.csv)

The SQL queries for the employee database analysis is available here: [PyBer_Challenge](Queries/PyBer_Challenge.ipynb)

### Software

The software and web-based GUI (graphical user interface) tool used for this analysis are:

* Visual Studio Code Version 1.62.3
* PostgreSQL (PgAdmin 4) Version 6.1

### Outcomes 

CANVAS > There is a bulleted list with **four major** points from the two analysis deliverables.
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The code block is as follows:

```
SELECT DISTINCT ON  (emp_no) emp_no,
                    first_name,
                    last_name,
                    title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;
```


## Summary

CANVAS> The summary addresses the two questions and contains two additional queries or tables that may provide more insight.
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

In summary, an exploratory analysis on city and ride data was completed in order to generate a summary DataFrame of the ride-sharing data by city type. This data was then represented in a multiple-line chart so that it can be used to inform discussion and assist the CEO and management to determine affordability for underserved neighborhoods.
