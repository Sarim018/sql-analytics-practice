create database practice;
use practice;
select * from layoffs
where country = 'india'
and total_laid_off >= '100';
select * from layoffs;
DESCRIBE layoffs;
select company, date, stage
from layoffs;
select distinct industry
from layoffs;
select distinct country
from layoffs;
select distinct stage
from layoffs;
select company,
total_laid_off as employee_laid_off
from layoffs;
select company,
funds_raised_millions as funding_in_millions
from layoffs;
select company, country,
country as nation
from layoffs;
select company,
funds_raised_millions * 1000000 as funds_in_dollars
from layoffs;
select total_laid_off, percentage_laid_off
from layoffs;
select company,
funds_raised_millions / 1000 as funds_in_billions
from layoffs;
select company, total_laid_off,
total_laid_off * 2 as double_laid_off
from layoffs;
select company, funds_raised_millions,
ifnull(funds_raised_millions, 0) as funding_category
from layoffs;
select company, percentage_laid_off,
percentage_laid_off * 100 as percent_as_numbers
from layoffs;
select company, country,
concat(company,' - ', country) as sarim
from layoffs;
select company, funds_raised_millions,
funds_raised_millions / 10 as funding_in_crores
from layoffs;
select company from layoffs
where total_laid_off > 1000;
select company from layoffs
where total_laid_off < '100';
select company from layoffs
where funds_raised_millions > '500';
select company from layoffs
where country = 'united states';
select company from layoffs
where industry = 'retail';
use practice;
select company from layoffs
where total_laid_off >= 500;
select company from layoffs
where funds_raised_millions <= 100;
select company from layoffs
where country != 'united_states';
select company from layoffs
where percentage_laid_off = 1;
use practice;
select company from layoffs
where country = 'United_States' and 
total_laid_off > 100;
select company from layoffs
where industry = 'Tech' and
funds_raised_millions > 300;
select company from layoffs
where country = 'India' and 
Total_laid_off > 200;
select company from layoffs
where country = 'India' or
country = 'United States';
select company from layoffs
where funds_raised_millions > 500 or
total_laid_off > 1000;
select company from layoffs
where industry = 'Retail' or
industry = 'Consumer';
select company, total_laid_off from layoffs
where total_laid_off is null;
select company, funds_raised_millions from layoffs
where funds_raised_millions is Not null;
select company, industry, country from layoffs
where Industry is null;
select company, country, total_laid_off, funds_raised_millions from layoffs
where country = 'United States' and
(total_laid_off > 1000 or funds_raised_millions > 500);
select company, country, total_laid_off from layoffs
where country != 'United States' and total_laid_off < 100;
use practice;
select * from layoffs;
select company from layoffs
where total_laid_off <= 100;
select company, total_laid_off
from layoffs
order by total_laid_off ASC;
select company, total_laid_off
from layoffs
order by total_laid_off DESC;
select company
from layoffs
order by company;
select company, country, total_laid_off
from layoffs
order by country asc, total_laid_off desc;
select country, count(total_laid_off) as Layoffs
from layoffs
group by country;
select industry, count(total_laid_off) as Layoffs
from layoffs
group by industry;
select country, count(company) as organisations
from layoffs
group by country;
select country, avg(total_laid_off) as Average_Layoffs
from Layoffs
group by country;
use practice;
SELECT country,
SUM(total_laid_off) AS Total_Layoffs
FROM layoffs
GROUP BY country
ORDER BY Total_Layoffs DESC
LIMIT 5;
select country,
SUM(total_laid_off) as Layoff
from layoffs
group by country
order by Layoff desc;
select industry,
SUM(total_laid_off) as Layoff
from layoffs
group by industry
order by layoff desc;
select country,
SUM(total_laid_off) as layoff
from layoffs
group by country
order by layoff desc
limit 5;
select country, SUM(total_laid_off) as layoff,
AVG(total_laid_off) as Average_Layoff
from layoffs
group by country
order by layoff desc;
select country, SUM(total_laid_off) as Total_Layoffs
from layoffs
group by country
Having Total_Layoffs > 10000
order by Total_layoffs DESC
limit 5;
select industry, AVG(total_laid_off) as Avg_Layoffs
from layoffs
group by industry
having Avg_Layoffs > 500
order by Avg_layoffs DESC
limit 5;
select country, count(company) as Company_Count
from layoffs
group by country
having Company_Count > 50
order by Company_Count desc
limit 10;
select industry, sum(total_laid_off) as Total_Layoffs
from layoffs
group by industry
having Total_Layoffs between 5000 and 20000
order by Total_Layoffs desc
limit 7;
select country, sum(total_laid_off) as Total_Layoffs, avg(total_laid_off) as Avg_Layoffs
from layoffs
group by country
having Total_Layoffs > 5000 and Avg_Layoffs > 300
order by Total_Layoffs desc
limit 5;












