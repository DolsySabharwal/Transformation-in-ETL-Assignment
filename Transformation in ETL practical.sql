## Question 5 : Convert the following inconsistent “Gender” entries into a standardized format (“Male”, “Female”): ["M", "male", "F", "Female", "MALE", "f"]

use company_db;
create table gender_data(
    id INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10)
);

INSERT INTO gender_data (gender) VALUES
('M'),
('male'),
('F'),
('Female'),
('MALE'),
('f');

SELECT 
    gender,
    CASE
        WHEN LOWER(gender) IN ('m','male') THEN 'Male'
        WHEN LOWER(gender) IN ('f','female') THEN 'Female'
    END AS standardized_gender
FROM gender_data;