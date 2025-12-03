/*
 - Identify the top 10 highest-paying Data Engineering roles that are available remotely
 - Add the specific skills required for these roles
*/

WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        job_posted_date,
        name AS company_name
    FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title LIKE '%Data Engineer' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 40
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY salary_year_avg DESC

/*
Key Insights from Skill Frequency Analysis
⭐ 1. Python is the undisputed core skill

Python appears 33 times, far more than any other skill.

This reinforces Python as the backbone of data engineering for:

ETL/ELT pipelines

Data manipulation (pandas, NumPy)

Orchestration and automation

Working with Spark (PySpark)

Implication: Strong Python proficiency is non-negotiable in data engineering hiring.

☁️ 2. Cloud platforms dominate — AWS leads

Top cloud skills:

AWS (22)

Azure (9)

GCP (6: via BigQuery/Cloud Composer, inferred)

AWS leads by a wide margin, driven by tools like:

Redshift

EMR

Lambda

S3

DynamoDB (also appears)

Implication: Cloud-native data engineering is now standard, not optional.

⚙️ 3. Data ecosystem tools in high demand

High-frequency ecosystem skills:

Skill	Count	Notes
SQL	20	Still essential for pipelines + analytics
Spark	19	Core for big data processing
Kafka	17	Event streaming is now mainstream
Airflow	11	Most common orchestration tool
Databricks	8	Increasing enterprise adoption
Hadoop	6	Declining, but still present
Snowflake	6	Strong momentum

Implication: Modern data stacks are shifting to Spark + cloud data warehouses + orchestration.

🔧 4. Programming languages beyond Python

Scala (12) — heavily tied to Spark performance-critical roles

Java (8) — legacy pipeline maintenance & Kafka systems

Go, Rust, TypeScript, C, Clojure — appear but very rare

Implication: Multi-language ability is useful but not required.

🧱 5. Kubernetes and infrastructure skills rising

Kubernetes (9)

Docker (4)

Terraform (3)

This shows the blending of:

Data engineering

DevOps

Platform engineering

Implication: Modern data engineers are expected to understand containerized + scalable deployments.

📉 6. Long-tail tools appear only once

Examples:

Power BI

Rust

Redis

GraphQL

Jupyter

Bitbucket/GitHub

These are role-specific rather than industry-wide requirements.

📊 Summary: The 2023 Data Engineer “Skill Profile”
Core Required Skills

Python

SQL

Spark

AWS

Fast-growing / strongly preferred

Kafka

Airflow

Kubernetes

Databricks

Snowflake

Nice-to-haves

Scala

Java

Terraform / Docker

BI tools

If you'd like, I can also:
✅ create visual charts (bar charts / word clouds)
✅ cluster skills into categories (ETL, cloud, orchestration)
✅ generate a ranked "Top 10 Skills for Data Engineers" guide
*/