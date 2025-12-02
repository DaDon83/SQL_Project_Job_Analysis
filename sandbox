CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50) 
);

INSERT INTO job_applied
    (job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status)
VALUES (1,
        '2024-02-10',
        true,
        'res.pdf',
        true,
        'cov.pdf',
        'submitted'),
        (2,
        '2024-02-10',
        true,
        'res.pdf',
        false,
        NULL,
        'submitted');

SELECT * FROM job_applied;

ALTER TABLE job_applied
ADD contact VARCHAR(50); 

UPDATE job_applied
SET contact = 'Don'
WHERE job_id = 2;

