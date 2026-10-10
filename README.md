# 🌍 Open Global Workforce & Tech Salaries 2026

## Global Technology Workforce Intelligence, Salary Benchmarking & Hiring Demand Analysis

---

## 📌 Project Overview

The technology job market is continuously evolving as organizations expand their investments in Artificial Intelligence (AI), Machine Learning (ML), cloud computing, data engineering, cybersecurity, and software development.

Understanding which roles are in demand, how salaries vary across locations, which technical skills employers seek, and where remote opportunities are concentrated is essential for both job seekers and workforce strategy teams.

This project analyzes **12,003 technology job postings** using Excel, MySQL, and Tableau to explore global technology hiring patterns, salary distributions, compensation opportunities, technology-stack demand, recruitment sources, and geographic differences.

The project transforms job posting data into actionable workforce intelligence for:

• Data Analysts and Business Analysts  
• Technology professionals and job seekers  
• HR Analytics and Talent Acquisition teams  
• Workforce Planning teams  
• Compensation and Benefits analysts  
• Recruitment Strategy teams  
• Business Intelligence professionals  

The central business question is:

> **Where are the strongest technology job opportunities, which skills are employers requesting, and how do salary levels vary by role, location, and hiring source?**

---

## 🔗 Project Links

### 💻 GitHub Repository

https://github.com/UtkarshThakur17112000/Open-Global-Workforce-Tech-Salaries-2026

### 📊 Excel Analysis

https://docs.google.com/spreadsheets/d/1zxPceCl0Ukh0geXu6-_jagKqBVucOmoM/edit?usp=sharing&ouid=108827164403131059178&rtpof=true&sd=true

### 📈 Tableau Public Dashboard

https://public.tableau.com/views/GlobalTechnologyWorkforceIntelligence2026/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

---

## 🎯 Business Objectives

The project focuses on answering important workforce and compensation questions:

• Which technology roles generate the highest hiring demand?

• Which companies advertise the greatest number of technology positions?

• Which locations offer the highest salary ranges?

• Which job titles have the strongest premium-compensation opportunities?

• How does remote hiring compare with location-specific recruitment?

• Which technology-stack combinations appear most frequently?

• Which technical skill combinations are associated with higher advertised salaries?

• Which recruitment sources account for the largest share of job postings?

• How did hiring activity change during the observed period?

• Which combinations of job title, location, salary, and technology stack offer attractive employment opportunities?

---

## 📊 Dataset Overview

The dataset, named **Open Global Workforce & Tech Salaries 2026**, provides a structured view of technology job postings across multiple locations, job titles, employers, compensation ranges, technology stacks, and recruitment sources.

The dataset description identifies open public sources and structured enrichment of job descriptions as part of its methodology.

The dataset supports analysis of:

• Global technology hiring demand  
• Salary ranges and compensation benchmarking  
• Geographic differences in salaries  
• Remote and location-specific opportunities  
• Employer hiring activity  
• Technology-stack requirements  
• Recruitment platform performance  
• Short-term hiring activity  

### Dataset Period

**August 1–5, 2026**

The available records cover a five-calendar-day observation window. The latest timestamp in the dataset is early August 5, 2026, so the final day's order of magnitude and hiring totals should be interpreted with the possibility of partial-day coverage.

---

## 📈 Dataset Scale

• **12,003 job postings**

• **12,003 unique job IDs**

• **20 standardized job titles**

• **17 company names**

• **16 location categories**

• **4 job posting sources**

• **10 dataset columns**

• **5 calendar dates in the observation window**

The inspected CSV contains no missing values in its ten columns.

---

## 🗂️ Dataset Columns

| Column | Description |
|---|---|
| job_id | Unique identifier for each job posting |
| job_title | Standardized professional job title |
| company_name | Employer or organization name |
| location | Job location, including remote categories |
| salary_min_usd | Minimum estimated annual salary in USD |
| salary_max_usd | Maximum estimated annual salary in USD |
| tech_stack | Comma-separated technologies and technical skills |
| source | Original job posting source category |
| description | Full-text job description |
| date_posted | Job posting timestamp |

---

## 🧩 Main Analytical Categories

### 1. Job Market & Hiring Demand

Analyze job posting volume by:

• Job title  
• Company  
• Location  
• Date posted  
• Recruitment source  

The objective is to understand where hiring opportunities are concentrated and which roles appear most frequently.

### 2. Salary & Compensation Analysis

Evaluate:

• Average minimum salary  
• Average maximum salary  
• Salary range by job title  
• Salary range by location  
• Salary range by employer  
• Premium-compensation opportunities  

This helps compare advertised compensation across roles and markets.

### 3. Remote Work & Geographic Analysis

Investigate:

• Remote hiring share  
• Remote region distribution  
• Location-specific posting volume  
• Average salary by location  
• Remote versus location-specific compensation  

The analysis helps distinguish markets with high job availability from those offering higher salary ranges.

### 4. Technology-Stack Analysis

Analyze the technology combinations requested by employers, including examples such as:

• Python and SQL  
• Python, Pandas, Scikit-learn, and AWS  
• Python, Airflow, Snowflake, and dbt  
• Java, Spring Boot, Kafka, and PostgreSQL  
• Go, Kubernetes, Docker, and GCP  
• C++, CUDA, and Computer Vision  
• JavaScript, React, and Node.js  

The goal is to identify frequently requested combinations and compare their associated salary ranges.

### 5. Recruitment Source Analysis

Compare the four source categories present in the dataset:

• HackerNews  
• Glassdoor_Scrape  
• Company_Career_Page  
• LinkedIn_Proxy  

The analysis explores differences in posting volume and advertised compensation across these sources.

---

# 📈 Tableau Dashboard — Global Technology Workforce Intelligence

## 🎯 Dashboard Objective

Provide an executive overview of technology hiring demand, advertised salaries, premium-compensation opportunities, remote hiring, location-based pay differences, and technology-stack demand.

The dashboard brings together key workforce KPIs and supporting visualizations in one analytical view.

---

## 📌 Executive KPI Cards

### 1. Average Maximum Salary

**$141,565**

The average of the advertised maximum annual salary across the dataset.

### 2. Average Minimum Salary

**$100,923**

The average of the advertised minimum annual salary across the dataset.

### 3. Premium Salary Rate

**36.31%**

The share of postings with a maximum advertised salary above $150,000.

### 4. Total Job Postings

**12,003**

The total number of job postings in the dataset.

### 5. Remote Hiring Share

**24.89%**

The share of postings whose location is classified as remote.

---

## 📊 Dashboard Visualizations

### 1. Daily Hiring Volume

**Business Question:** How did job posting volume change during the observation period?

A time-series chart showing the number of postings by date.

It helps identify:

• Daily fluctuations in posting volume  
• High-activity dates  
• Unusually low recorded volumes  
• Potential effects of incomplete daily coverage  

### 2. Remote Hiring Mix

**Business Question:** What share of observed jobs offer remote work?

A pie chart comparing remote and non-remote posting volume.

It helps quantify the importance of remote recruitment in the dataset.

### 3. Premium Compensation Prevalence by Role

**Business Question:** Which job titles have the highest share of premium-salary postings?

A bar chart comparing the percentage of postings with maximum salary above $150,000 across job titles.

It helps identify roles where premium compensation appears more frequently.

### 4. Hiring Demand by Job Title

**Business Question:** Which technology roles generate the most job postings?

A bar chart comparing the number of postings across standardized job titles.

It supports role-level demand analysis.

### 5. Average Maximum Salary by Location

**Business Question:** Which markets have the highest advertised maximum salaries?

A location-level comparison of average maximum salaries.

It helps reveal compensation differences across global technology hubs and remote categories.

### 6. Most Requested Technology-Stack Combinations

**Business Question:** Which combinations of technologies appear most often in job descriptions?

A bar chart ranking exact technology-stack combinations by posting count.

It helps identify recurring combinations that job seekers may want to investigate.

### 7. Job Posting Source Mix

**Business Question:** Which recruitment sources contribute the largest numbers of postings?

A bar chart comparing posting volume across the four source categories.

It supports source-level hiring analysis.

---

# 📊 Excel Analysis

## 🎯 Business Objective

Use Excel to explore workforce patterns, benchmark compensation, compare locations, and identify the technology skills associated with job opportunities.

The analysis is organized around the following themes:

• Hiring demand  
• Salary benchmarking  
• Salary-range analysis  
• Geographic distribution  
• Remote work  
• Employer comparison  
• Technology-stack demand  
• High-paying job opportunities  
• Recruitment sources  
• Hiring trends  
• Strategic workforce opportunities  

## 💼 Excel Business Questions

### Job Market & Hiring Demand

1. Which job titles have the highest number of job postings, and what does this indicate about demand for different technology roles?

2. Which companies have posted the highest number of technology job openings, and how concentrated is hiring among leading employers?

### Salary & Compensation Analysis

3. Which job titles offer the highest average minimum and maximum salaries, and how large are the differences between roles?

4. Which locations offer the highest average salary ranges, and how do compensation levels differ across global technology hubs?

### Salary Range & Compensation Structure

5. Which job titles have the widest average salary ranges between their minimum and maximum offers?

6. What percentage of job postings offer a maximum salary above $150,000, and which job titles account for the largest share of these opportunities?

### Location & Global Workforce Analysis

7. Which locations have the highest number of job postings, and how does hiring volume compare across major global technology markets?

8. How do remote job opportunities compare with location-specific opportunities in terms of posting volume and average salary?

### Company & Employer Analysis

9. Which companies offer the highest average maximum salaries across their job postings, and how does their compensation compare with the overall market?

10. Which companies combine a high number of job postings with above-average salary offerings?

### Technology Skills & Tech Stack Analysis

11. Which technology stacks appear most frequently across job postings, and what are the most in-demand technical skill combinations?

12. Which technology stacks are associated with the highest average maximum salaries?

### High-Paying Job Opportunities

13. Which job titles have the highest proportion of postings with a maximum salary above $200,000?

14. Which locations have the greatest concentration of jobs offering maximum salaries above $150,000?

### Job Source & Marketplace Analysis

15. Which job sources generate the highest number of technology job postings, and how does the hiring mix differ across sources?

16. Which job sources provide the highest average salary ranges, and are premium-paying roles concentrated on particular platforms?

### Hiring Trend & Time Analysis

17. How does the number of job postings change from August 1 to August 5, 2026, and which dates show the highest hiring activity?

18. Did average salary levels change across the five-day period, and which dates recorded the highest average compensation?

### Strategic Workforce Opportunities

19. Which job title and location combinations provide the strongest combination of high job availability and high average maximum salary?

20. Which job roles, locations, and technology stacks together represent the strongest high-paying hiring opportunities in the dataset?

---

# 💻 MySQL Business Analysis

## 🎯 Business Objective

Use MySQL to answer structured business questions with aggregation, date analysis, salary segmentation, ranking, and comparative analytics.

The objective is to produce insights that can help job seekers, workforce analysts, and recruitment teams understand where demand and compensation opportunities are concentrated.

## SQL Business Questions

### 1. Hiring Trends

**Question:** How has the number of technology job postings changed from August 1 to August 5, 2026, and which dates experienced the largest day-over-day changes?

**Purpose:** Identify short-term hiring trends and unusual fluctuations in recruitment activity.

### 2. Job Title Demand

**Question:** Which job titles account for the largest share of total technology job postings?

**Purpose:** Measure demand across technology roles.

### 3. Employer Hiring Activity

**Question:** Which companies have the highest number of open technology positions, and how concentrated is hiring among the leading employers?

**Purpose:** Identify major hiring organizations and measure concentration.

### 4. Location-Based Demand

**Question:** Which locations have the highest number of technology job postings, and what percentage of total hiring does each location represent?

**Purpose:** Identify major global technology hiring markets.

### 5. Remote Hiring

**Question:** How does remote hiring volume compare with location-specific hiring, and which remote region contributes the most postings?

**Purpose:** Measure remote opportunity volume and geographic distribution.

### 6. Job Source Mix

**Question:** Which job sources generate the most technology job postings, and how does the posting mix differ across platforms?

**Purpose:** Compare the contribution of recruitment sources.

### 7. Salary by Job Title

**Question:** Which job titles have the highest average minimum and maximum salaries, and how large is the salary range offered for each role?

**Purpose:** Benchmark compensation across roles.

### 8. Employer Compensation

**Question:** Which companies have the highest average maximum salary, and how does each company's compensation compare with the overall market average?

**Purpose:** Identify employers offering comparatively higher compensation.

### 9. Salary by Location

**Question:** Which locations have the highest average maximum salaries, and what is the salary gap between the highest- and lowest-paying locations?

**Purpose:** Quantify geographic salary differences.

### 10. Premium Salaries by Role

**Question:** Which job titles have the highest proportion of postings with a maximum salary above $150,000?

**Purpose:** Identify roles with a strong prevalence of premium compensation.

### 11. High-End Compensation

**Question:** Which job titles have the highest proportion of postings with a maximum salary above $200,000, and how do they compare with the overall market rate?

**Purpose:** Identify positions associated with top-end salary opportunities.

### 12. Premium Salaries by Location

**Question:** Which locations have the greatest proportion of job postings with maximum salaries above $150,000?

**Purpose:** Identify markets with greater concentrations of high-paying positions.

### 13. Premium Salaries by Source

**Question:** Which job sources have the highest proportion of postings with maximum salaries above $150,000?

**Purpose:** Compare premium-compensation prevalence across recruitment platforms.

### 14. Technology-Stack Demand

**Question:** Which exact technology-stack combinations appear most frequently across job postings?

**Purpose:** Identify frequently requested technical combinations.

### 15. Technology-Stack Compensation

**Question:** Which exact technology-stack combinations have the highest average maximum salaries, and how do they compare with the overall market salary?

**Purpose:** Compare compensation across technology combinations.

### 16. Individual Technology Demand

**Question:** Which individual technologies appear in the largest number of job postings after separating the comma-separated tech_stack field?

**Purpose:** Identify widely requested technical skills.

### 17. Attractive Role–Location Combinations

**Question:** Which job title and location combinations have both above-average posting volume and above-average maximum salary?

**Purpose:** Identify employment markets combining opportunity volume with competitive compensation.

---

## 🛠️ Tools & Technologies

### Microsoft Excel

• Data cleaning and preparation  
• Pivot Tables  
• Pivot Charts  
• Salary benchmarking  
• Conditional formatting  
• KPI analysis  
• Comparative analysis  
• Business reporting  

### MySQL

• SELECT and WHERE  
• GROUP BY and ORDER BY  
• Aggregate functions  
• CASE statements  
• CTEs  
• Window functions and ranking  
• Date-based analysis  
• Salary segmentation  
• Percentage calculations  
• Multi-dimensional comparisons  

### Tableau

• Executive KPI cards  
• Bar charts  
• Line charts  
• Pie charts  
• Salary benchmarking  
• Hiring demand analysis  
• Technology-stack visualization  
• Interactive dashboard design  

---

## 📈 Key Dataset Findings

The inspected dataset and Tableau dashboard show the following baseline metrics:

• Average minimum salary: approximately **$100,923**

• Average maximum salary: approximately **$141,565**

• Premium salary rate: **36.31%**

• Remote hiring share: **24.89%**

• Total job postings: **12,003**

• Average maximum salary median: approximately **$131,587**

• Highest maximum salary in the dataset: **$326,671**

• Highest average maximum salaries among the listed locations include Seattle, New York, and San Francisco.

These metrics provide a starting point for comparing compensation and hiring patterns. They should not be interpreted as representative of the entire global technology labor market because the dataset covers a short observation window and selected sources.

---

## 💼 Business Applications

The project can support:

• Workforce planning  
• Salary benchmarking  
• Recruitment source evaluation  
• Technology skill planning  
• Career research  
• Location comparisons  
• Remote-work analysis  
• Compensation strategy  
• Hiring demand reporting  
• Business intelligence dashboards  

---

## 🎯 Project Outcome

This project demonstrates how Excel, MySQL, and Tableau can be combined to convert job posting data into useful workforce intelligence.

The analysis connects hiring demand, compensation, geographic differences, remote work, recruitment channels, and technology-stack requirements.

It demonstrates an end-to-end analytics workflow:

**Data Exploration → Excel Analysis → MySQL Business Queries → Tableau Visualization → Business Insights**

The ultimate goal is to help stakeholders understand where job opportunities are concentrated, how advertised compensation varies, and which technical skill combinations are frequently requested by employers.

---

## ⚠️ Data Interpretation Note

The dataset covers job postings dated August 1–5, 2026. It provides a short-term snapshot rather than a full-year or long-term view of the technology labor market.

The last day may contain partial-day data, and salary figures are advertised ranges rather than verified final compensation. Results should therefore be treated as descriptive findings about the provided dataset, not as guarantees of actual pay or future hiring demand.

---

## 👤 Author

**Utkarsh Thakur**

Data Analyst | SQL | Excel | Tableau | Business Intelligence | Data Analytics
