--TOP PAYING JOBS FOR BUSINESS ANALYSTS WORKING FROM HOME

SELECT 
    DISTINCT company_dim.name AS company_name,
    job_title_short AS job_title,
    salary_year_avg AS average_salary
FROM
    job_postings_fact
LEFT JOIN
    company_dim ON job_postings_fact.company_id = company_dim.company_id    
WHERE
    job_title_short = 'Business Analyst'
    AND job_work_from_home IS TRUE
    AND salary_year_avg IS NOT NULL

ORDER BY
    salary_year_avg DESC
LIMIT 10;