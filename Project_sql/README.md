# Introduction
 Dive into the data job market. Focusing on data engineering roles.
 SQL queries? Check them out here: [project_sql folder](/Project_sql/)
# Background
 I watched a youtube video to get the database data and followed the course instructions. YouTube vid: [Vid](https://www.youtube.com/watch?v=7mz73uXD9DA&t=13734s)
# Tools I used
- VSCode
- github
- PostgreSQL
# The Analysis
### 1. Top Paying Data Analyst Jobs
```sql
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
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
LIMIT 40;
```
Which produced this output:
| job_id   | job_title                           | job_location | job_schedule_type | salary_year_avg | job_posted_date        | company_name                  |
|----------|--------------------------------------|--------------|-------------------|------------------|--------------------------|-------------------------------|
| 21321    | Data Engineer                        | Anywhere     | Full-time         | 325000.0         | 2023-01-27 18:10:51     | Engtal                        |
| 157003   | Data Engineer                        | Anywhere     | Full-time         | 325000.0         | 2023-02-17 18:11:49     | Engtal                        |
| 270455   | Data Engineer                        | Anywhere     | Full-time         | 300000.0         | 2023-07-17 11:10:55     | Durlston Partners             |
| 543728   | Staff Data Engineer                  | Anywhere     | Full-time         | 250000.0         | 2023-03-28 13:11:42     | Signify Technology            |
| 561728   | Data Engineer                        | Anywhere     | Full-time         | 250000.0         | 2023-03-24 23:32:42     | AI Startup                    |
| 595768   | Principal Data Engineer              | Anywhere     | Full-time         | 250000.0         | 2023-02-14 15:24:07     | Signify Technology            |
| 204320   | Staff Data Engineer                  | Anywhere     | Full-time         | 245000.0         | 2023-01-08 15:05:16     | Handshake                     |
| 14251    | Staff Data Engineer                  | Anywhere     | Full-time         | 234500.0         | 2023-12-19 13:11:19     | Hinge                         |
| 236847   | Senior Data Engineer                 | Anywhere     | Full-time         | 225000.0         | 2023-09-25 18:00:59     | Cybernetic Search             |
| 202624   | Rust Data Engineer                   | Anywhere     | Full-time         | 225000.0         | 2023-09-05 09:02:44     | Understanding Recruitment     |
| 67320    | Staff Data Engineer                  | Anywhere     | Full-time         | 220000.0         | 2023-02-10 20:24:11     | Harnham                       |
| 230799   | Senior Data Engineer                 | Anywhere     | Full-time         | 220000.0         | 2023-10-17 16:07:30     | BrightHire Search Partners Inc. |
| 448016   | Principal Data Engineer              | Anywhere     | Full-time         | 215000.0         | 2023-11-14 09:05:50     | Storm3                        |
| 536902   | Senior / Staff, Data Engineer        | Anywhere     | Full-time         | 215000.0         | 2023-02-15 16:15:40     | Shiftsmart                    |
| 398664   | Senior Data Engineer                 | Anywhere     | Full-time         | 215000.0         | 2023-10-27 14:59:24     | Stealth Mode AI Startup       |
| 373301   | Data Engineer                        | Anywhere     | Full-time         | 214000.0         | 2023-01-23 00:07:19     | Booz Allen                    |
| 5394     | Staff Data Engineer                  | Anywhere     | Full-time         | 211733.0         | 2023-10-19 21:30:58     | Swing Education               |
| 252983   | Senior Data Engineer                 | Anywhere     | Full-time         | 210500.0         | 2023-06-21 16:53:48     | GeneDx                        |
| 2812     | Staff Data Engineer                  | Anywhere     | Full-time         | 210000.0         | 2023-03-24 15:14:46     | Harnham                       |
| 565498   | Senior Data Engineer                 | Anywhere     | Full-time         | 207500.0         | 2023-07-25 20:08:39     | Averity                       |
| 36250    | Fully Remote - Golang Data Engineer  | Anywhere     | Full-time         | 205000.0         | 2023-09-20 16:05:49     | Durlston Partners             |
| 384754   | Staff Data Engineer                  | Anywhere     | Full-time         | 205000.0         | 2023-02-24 21:09:37     | Harnham                       |
| 50069    | Lead Data Engineer                   | Anywhere     | Full-time         | 205000.0         | 2023-12-14 15:04:43     | Abridge                       |
| 103396   | Lead Data Engineer                   | Anywhere     | Full-time         | 200500.0         | 2023-06-27 21:28:44     | Wizard                        |
| 638394   | Data Engineer                        | Anywhere     | Full-time         | 200000.0         | 2023-04-11 14:51:40     | Vibrant Planet                |
| 130206   | Principal Data Engineer              | Anywhere     | Full-time         | 200000.0         | 2023-03-10 22:14:20     | murmuration                    |
| 1046827  | Staff Health Data Engineer           | Anywhere     | Full-time         | 197500.0         | 2023-08-03 17:56:07     | Nuna Inc.                     |
| 67801    | Staff Data Engineer                  | Anywhere     | Full-time         | 195000.0         | 2023-05-04 18:07:21     | Harnham                       |
| 161025   | Senior Data Engineer                 | Anywhere     | Full-time         | 195000.0         | 2023-12-08 08:48:25     | Enertek Group                 |
| 826039   | Data Engineer                        | Anywhere     | Full-time         | 192000.0         | 2023-02-28 00:24:52     | Genome Medical                |
| 21915    | Senior Data Engineer                 | Anywhere     | Full-time         | 190000.0         | 2023-08-17 06:42:17     | Robert Half                   |
| 305586   | Data Engineer                        | Anywhere     | Full-time         | 190000.0         | 2023-10-30 13:04:55     | FirstParty                    |
| 69706    | Senior Data Engineer                 | Anywhere     | Full-time         | 190000.0         | 2023-06-16 12:32:52     | Harnham                       |
| 613352   | Senior Data Engineer                 | Anywhere     | Full-time         | 190000.0         | 2023-05-17 14:04:36     | Trepp, Inc.                   |
| 1453625  | Senior Data Engineer                 | Anywhere     | Full-time         | 190000.0         | 2023-10-27 07:53:28     | WhiteCrow                     |
| 194545   | Lead Data Engineer                   | Anywhere     | Full-time         | 190000.0         | 2023-02-28 14:53:16     | Storm3                        |
| 155897   | Senior Data Engineer                 | Anywhere     | Full-time         | 187500.0         | 2023-10-30 14:55:38     | Worth Search                  |
| 817175   | Senior Data Engineer                 | Anywhere     | Full-time         | 187500.0         | 2023-04-29 17:10:10     | Stealth                       |
| 242175   | Data Engineer                        | Anywhere     | Full-time         | 187500.0         | 2023-08-14 18:50:03     | Seamless Migration LLC        |
| 163416   | Data Engineer                        | Anywhere     | Full-time         | 187500.0         | 2023-03-07 15:01:11     | zenapse                       |

# What I Learned
- **Impressive:** Look at this image
![Gate Volume Image](assets/gate.png)
*This image was created with OpenGate and VRML*
# Conclusion
 - I will work with SQL more swiftly in the future

