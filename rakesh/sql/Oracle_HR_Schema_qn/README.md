#  Oracle HR Schema - Complex SQL Practice

Welcome to my SQL practice repository! This project contains a curated collection of ** SQL queries** using **Oracle's built-in HR schema**. These problems includes advanced SQL concepts like:

- Window Functions
- Aggregations & Grouping
- Subqueries & CTEs
- Hierarchical Queries
- Analytical Calculations

---

##  Schema Reference: Oracle HR

This repo uses the **Oracle HR sample schema**, which includes the following key tables:

- `employees`
- `departments`
- `jobs`
- `locations`
- `countries`
- `regions`

> If you don’t have the HR schema installed, you can [follow Oracle's official guide](https://docs.oracle.com/en/database/oracle/oracle-database/19/comsc/installing-sample-schemas.html) to set it up.

---

## Entity-Relationship (ER) Description 

REGIONS
-------
- REGION_ID (PK)
- REGION_NAME

COUNTRIES
---------
- COUNTRY_ID (PK)
- COUNTRY_NAME
- REGION_ID (FK) → REGIONS.REGION_ID

LOCATIONS
---------
- LOCATION_ID (PK)
- STREET_ADDRESS
- POSTAL_CODE
- CITY
- STATE_PROVINCE
- COUNTRY_ID (FK) → COUNTRIES.COUNTRY_ID

DEPARTMENTS
-----------
- DEPARTMENT_ID (PK)
- DEPARTMENT_NAME
- MANAGER_ID (FK) → EMPLOYEES.EMPLOYEE_ID
- LOCATION_ID (FK) → LOCATIONS.LOCATION_ID

JOBS
----
- JOB_ID (PK)
- JOB_TITLE
- MIN_SALARY
- MAX_SALARY

EMPLOYEES
---------
- EMPLOYEE_ID (PK)
- FIRST_NAME
- LAST_NAME
- EMAIL
- PHONE_NUMBER
- HIRE_DATE
- JOB_ID (FK) → JOBS.JOB_ID
- SALARY
- COMMISSION_PCT
- MANAGER_ID (FK) → EMPLOYEES.EMPLOYEE_ID (self)
- DEPARTMENT_ID (FK) → DEPARTMENTS.DEPARTMENT_ID

JOB_HISTORY
-----------
- EMPLOYEE_ID (PK, FK) → EMPLOYEES.EMPLOYEE_ID
- START_DATE (PK)
- END_DATE
- JOB_ID (FK) → JOBS.JOB_ID
- DEPARTMENT_ID (FK) → DEPARTMENTS.DEPARTMENT_ID

---

## ✅ Problem List
Updating soon..