/*
1 Question: How has the number of technology job postings changed from August 1 to August 5, 2026, and which dates experienced the largest day-over-day changes?

Purpose: Identify short-term hiring trends, unusual fluctuations, and periods of unusually high or low recruitment activity.

2 Question: Which job titles account for the largest share of total technology job postings?

Purpose: Measure demand across different technology roles and identify where hiring activity is most concentrated.

3️ Question: Which companies have the highest number of open technology positions, and how concentrated is hiring among the leading employers?

Purpose: Identify major hiring organizations and determine whether workforce demand is broadly distributed or concentrated among a few employers.

4️ Question: Which locations have the highest number of technology job postings, and what percentage of total hiring does each location represent?

Purpose: Identify the major global technology hiring markets and compare their relative recruitment volumes.

5️ Question: How does remote hiring volume compare with location-specific hiring, and which remote region contributes the most postings?

Purpose: Measure the scale of remote work opportunities and understand where remote hiring activity is concentrated geographically.

6️ Question: Which job sources generate the most technology job postings, and how does the posting mix differ across platforms?

Purpose: Understand the contribution of each recruitment source and identify the platforms with the largest share of observed hiring activity.

7️ Question: Which job titles have the highest average minimum and maximum salaries, and how large is the salary range offered for each role?

Purpose: Compare compensation levels across roles and identify positions with higher advertised earning potential.

8️ Question: Which companies have the highest average maximum salary, and how does each company's compensation compare with the overall market average?

Purpose: Benchmark employer compensation against the broader technology job market.

9️ Question: Which locations have the highest average maximum salaries, and what is the salary gap between the highest- and lowest-paying locations?

Purpose: Identify geographic differences in compensation and quantify the size of the location-based salary gap.

10 Question: Which job titles have the highest proportion of postings with a maximum salary above $150,000?

Purpose: Identify roles where premium compensation opportunities are most prevalent.

11 Question: Which job titles have the highest proportion of postings with a maximum salary above $200,000, and how do they compare with the overall market rate?

Purpose: Identify roles with a particularly high prevalence of top-end compensation opportunities.

12 Question: Which locations have the greatest proportion of job postings with maximum salaries above $150,000?

Purpose: Identify geographic markets where high-paying technology positions are most prevalent.

13 Question: Which job sources have the highest proportion of postings with maximum salaries above $150,000?

Purpose: Determine whether premium-paying opportunities are more concentrated on particular recruitment platforms.

14 Question: Which exact technology-stack combinations appear most frequently across job postings?

Purpose: Identify the technical combinations most commonly requested by employers and understand recurring technology-stack demand.

15 Question: Which exact technology-stack combinations have the highest average maximum salaries, and how do they compare with the overall market salary?

Purpose: Determine whether particular combinations of technologies are associated with higher advertised compensation.

16 Question: Which individual technologies appear in the largest number of job postings after separating the comma-separated tech_stack field?

Purpose: Identify the most widely requested technical skills across the technology job market.

17 Question: Which job title and location combinations have both above-average posting volume and above-average maximum salary?

Purpose: Identify employment markets that combine meaningful job availability with stronger-than-average compensation.

*/


SELECT * FROM `open global workforce & tech salaries 2026`.global_tech_market_2026;

# 1 How has the number of technology job postings changed from August 1 to August 5, 2026, and which dates experienced the largest day-over-day changes?
# Purpose: Identify short-term hiring trends, unusual fluctuations, and periods of unusually high or low recruitment activity.
SELECT DATE(date_posted),count(*),
ROUND((count(*)-LAG(count(*))Over(Order by DATE(date_posted)))*100.0 /
LAG(count(*))Over(Order by DATE(date_posted)),2) as day_by_day_pct_change
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE date_posted >= '2026-08-01'
AND date_posted < '2026-08-06'
group by DATE(date_posted)
order by DATE(date_posted);


# 2 Question: Which job titles account for the largest share of total technology job postings?
# Purpose: Measure demand across different technology roles and identify where hiring activity is most concentrated.
SELECT job_title,COUNT(*) AS total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
GROUP BY job_title
ORDER BY total_jobs DESC;

# 3 Question: Which companies have the highest number of open technology positions, 
# and how concentrated is hiring among the leading employers?
# Purpose: Identify major hiring organizations and determine whether workforce demand is broadly distributed or concentrated among a few employers.
SELECT company_name,count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
group by company_name
order by total_jobs desc;


# 4 Question: Which locations have the highest number of technology job postings,
# and what percentage of total hiring does each location represent?
# Purpose: Identify the major global technology hiring markets and compare their relative recruitment volumes.
SELECT location,count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE location IS NOT NULL AND LOWER(location) <> 'nvt'
group by location
order by total_jobs desc;



# 5 Question: How does remote hiring volume compare with location-specific hiring, and 
# which remote region contributes the most postings?
# Purpose: Measure the scale of remote work opportunities and understand where remote hiring activity is concentrated geographically.
SELECT location,count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*)
            FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
            WHERE location IS NOT NULL
              AND LOWER(location) <> 'nvt'
              AND LOWER(location) LIKE '%remote%'),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE location IS NOT NULL AND LOWER(location) <> 'nvt' and lower(location) Like "%remote%"
group by location
order by total_jobs desc;

# 6 Question: Which job sources generate the most technology job postings, 
# and how does the posting mix differ across platforms?
# Purpose: Understand the contribution of each recruitment source and identify the platforms with the largest share of observed hiring activity.
SELECT source,count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE source IS NOT NULL  
group by source
order by pct_of_total_jobs  desc;


# 7 Question: Which job titles have the highest average minimum and maximum salaries, and how large is the salary range offered for each role?
# Purpose: Compare compensation levels across roles and identify positions with higher advertised earning potential.
SELECT job_title,
round(avg(salary_min_usd),2) as avg_salary_min_usd,
round(avg(salary_max_usd),2) as avg_salary_max_usd,
round(avg(salary_max_usd-salary_min_usd),2) as avg_salary_spread,
count(*) as total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE source IS NOT NULL  
group by job_title
order by avg_salary_spread  desc;



# 8 Question: Which companies have the highest average maximum salary, and how does each company's compensation compare with the overall market average?
# Purpose: Benchmark employer compensation against the broader technology job market.
SELECT company_name,
round(avg(salary_min_usd),2) as avg_salary_min_usd,
round(avg(salary_max_usd),2) as avg_salary_max_usd,
round(avg(salary_max_usd-salary_min_usd),2) as avg_salary_spread,
count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs,
ROUND((avg(salary_max_usd) -
 (SELECT avg(salary_max_usd) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026))* 100.0 /
(SELECT avg(salary_max_usd) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS salary_premium_pct
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE company_name IS NOT NULL  
group by company_name
order by avg_salary_max_usd  desc;


# 9 Question: Which locations have the highest average maximum salaries, and what is the salary gap between the highest- and lowest-paying locations?
# Purpose: Identify geographic differences in compensation and quantify the size of the location-based salary gap.
SELECT location,
round(avg(salary_min_usd),2) as avg_salary_min_usd,
round(avg(salary_max_usd),2) as avg_salary_max_usd,
round(avg(salary_max_usd-salary_min_usd),2) as avg_salary_spread,
count(*) as total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE location IS NOT NULL  
group by location
order by avg_salary_spread  desc;


# 10 Question: Which job titles have the highest proportion of postings with a maximum salary above $150,000?
# Purpose: Identify roles where premium compensation opportunities are most prevalent.
SELECT job_title,
count(*) as total_jobs,
ROUND(sum(CASE when salary_max_usd>150000 then 1 end ) * 100.0 /
COUNT(*),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE job_title IS NOT NULL  
group by job_title
order by pct_of_total_jobs  desc;


# 11 Question: Which job titles have the highest proportion of postings with a maximum salary above $200,000, and how do they compare with the overall market rate?
# Purpose: Identify roles with a particularly high prevalence of top-end compensation opportunities.
SELECT job_title,
count(*) as total_jobs,
ROUND(sum(CASE when salary_max_usd>200000 then 1 else 0 end ) * 100.0 /
COUNT(*),2) AS pct_above_200k
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE job_title IS NOT NULL  
group by job_title
order by pct_above_200k  desc;




# 12 Question: Which locations have the greatest proportion of job postings with maximum salaries above $150,000?
# Purpose: Identify geographic markets where high-paying technology positions are most prevalent.
SELECT location,
count(*) as total_jobs,
sum(CASE when salary_max_usd>150000 then 1 else 0 end ) as jobs_above_150k,
ROUND(sum(CASE when salary_max_usd>150000 then 1 else 0 end ) * 100.0 /
COUNT(*),2) AS pct_above_150k
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE job_title IS NOT NULL  
group by location
order by pct_above_150k  desc;

# 13 Question: Which job sources have the highest proportion of postings with maximum salaries above $150,000?
# Purpose: Determine whether premium-paying opportunities are more concentrated on particular recruitment platforms.
SELECT source,
count(*) as total_jobs,
sum(CASE when salary_max_usd>150000 then 1 else 0 end ) as jobs_above_150k,
ROUND(sum(CASE when salary_max_usd>150000 then 1 else 0 end ) * 100.0 /
COUNT(*),2) AS pct_above_150k
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE source IS NOT NULL  
group by source
order by pct_above_150k  desc;


# 14 Question: Which exact technology-stack combinations appear most frequently across job postings?
# Purpose: Identify the technical combinations most commonly requested by employers and understand recurring technology-stack demand.
SELECT tech_stack,
count(*) as total_jobs,
ROUND(COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS pct_of_total_jobs
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE tech_stack IS NOT NULL  
group by tech_stack
order by total_jobs  desc;


# 15 Question: Which exact technology-stack combinations have the highest average maximum salaries, and how do they compare with the overall market salary?
# Purpose: Determine whether particular combinations of technologies are associated with higher advertised compensation.
SELECT tech_stack,
round(avg(salary_min_usd),2) as avg_salary_min_usd,
round(avg(salary_max_usd),2) as avg_salary_max_usd,
round(avg(salary_max_usd-salary_min_usd),2) as avg_salary_spread,
ROUND((avg(salary_max_usd) -
 (SELECT avg(salary_max_usd) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026))* 100.0 /
(SELECT avg(salary_max_usd) FROM `open global workforce & tech salaries 2026`.global_tech_market_2026),2) AS salary_premium_pct
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
WHERE tech_stack IS NOT NULL  
group by tech_stack
order by salary_premium_pct  desc;

# 16 Question: Which individual technologies appear in the largest number of job postings after separating the comma-separated tech_stack field?
# Purpose: Identify the most widely requested technical skills across the technology job market.
SELECT
    TRIM(jt.technology) AS technology,
    COUNT(DISTINCT t.job_id) AS total_job_postings,
    ROUND(
        COUNT(DISTINCT t.job_id) * 100.0 /
        (
            SELECT COUNT(*)
            FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
        ),
        2
    ) AS pct_of_total_postings
FROM `open global workforce & tech salaries 2026`.global_tech_market_2026 t
JOIN JSON_TABLE(
    CONCAT(
        '["',
        REPLACE(t.tech_stack, ', ', '","'),
        '"]'
    ),
    '$[*]' COLUMNS (
        technology VARCHAR(100) PATH '$'
    )
) jt
WHERE t.tech_stack IS NOT NULL
GROUP BY TRIM(jt.technology)
ORDER BY total_job_postings DESC;



# 17 Question: Which job title and location combinations have both above-average posting volume and above-average maximum salary?
# Purpose: Identify employment markets that combine meaningful job availability with stronger-than-average compensation.
WITH combo_analysis AS (
    
    SELECT
        job_title,
        location,
        COUNT(*) AS total_jobs,
        AVG(salary_max_usd) AS avg_max_salary
    FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
    WHERE job_title IS NOT NULL
      AND location IS NOT NULL
      AND LOWER(location) <> 'nvt'
    GROUP BY job_title, location
),

benchmarks AS (
    
    SELECT
        AVG(total_jobs) AS avg_jobs_per_combination,
        (
            SELECT AVG(salary_max_usd)
            FROM `open global workforce & tech salaries 2026`.global_tech_market_2026
            WHERE salary_max_usd IS NOT NULL
        ) AS overall_avg_max_salary
    FROM combo_analysis
)

SELECT
    c.job_title,
    c.location,
    c.total_jobs,
    ROUND(c.avg_max_salary, 2) AS avg_max_salary,
    ROUND(b.avg_jobs_per_combination, 2) AS avg_jobs_benchmark,
    ROUND(b.overall_avg_max_salary, 2) AS avg_salary_benchmark
FROM combo_analysis c
CROSS JOIN benchmarks b
WHERE c.total_jobs > b.avg_jobs_per_combination
  AND c.avg_max_salary > b.overall_avg_max_salary
ORDER BY c.avg_max_salary DESC,
         c.total_jobs DESC;



