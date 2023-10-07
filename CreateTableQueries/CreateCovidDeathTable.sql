
USE CovidData;

DROP TABLE IF EXISTS CovidDeath;
CREATE TABLE CovidDeath (
	iso_code VARCHAR(20),
    continent VARCHAR(100),
    location VARCHAR(255),
    date DATE,
    total_cases INT,
    new_cases INT,
    new_cases_smoothed FLOAT,
    total_deaths INT,
    new_deaths INT,
    new_deaths_smoothed FLOAT,
    total_cases_per_million FLOAT,
    new_cases_per_million  FLOAT,
    new_cases_smoothed_per_million FLOAT,
    total_deaths_per_million FLOAT,
    new_deaths_per_million FLOAT,
    new_deaths_smoothed_per_million FLOAT,
    reproduction_rate FLOAT,
    icu_patients INT,
    icu_patients_per_million FLOAT,
    hosp_patients INT,
    hosp_patients_per_million FLOAT,
    weekly_icu_admissions INT,
    weekly_icu_admissions_per_million FLOAT,
    weekly_hosp_admissions FLOAT,
    weekly_hosp_admissions_per_million FLOAT,
    total_tests FLOAT
);

SELECT * FROM CovidDeath;

-- IMPORT DATA

-- /Users/paritoshsharmaghimire/Desktop/SqlQueries/DataSets/CovidDeaths.csv  

LOAD DATA LOCAL INFILE '/Users/paritoshsharmaghimire/Desktop/SqlQueries/DataSets/CovidDeaths.csv' INTO TABLE CovidDeath
FIELDS TERMINATED BY ','
IGNORE 1 LINES;



