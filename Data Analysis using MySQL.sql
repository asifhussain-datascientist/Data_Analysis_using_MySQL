create database data_new;
select * from data_new.salaries;
use data_new;
-- 1	Show all columns and rows in the table

select * from salaries;

-- 2	Show only the EmployeeName and JobTitle columns

select EmployeeName, JobTitle from salaries;

-- 3	Show the number of employees in the table
select count(*) from salaries;

-- 4	Show the unique job title in the table
select distinct JobTitle from salaries;

-- 4	Show the number of unique job title in the table
select count(distinct JobTitle) from salaries;

-- 5	Show the job title and overtime pay for all employees with overtime pay greater than 50000
select JobTitle, OvertimePay from salaries
where OvertimePay > 50000;

-- 6	Show the average base pay for all employees
select AVG(BasePay) from salaries;

select AVG(BasePay)as "Average BasePay" from salaries;

-- 7	Show the top 10 highest paid employees
select EmployeeName, TotalPay from salaries
order by TotalPay desc
limit 10;

-- 8	Show the average of BasePay, OvertimePay and OtherPay for each employee
select EmployeeName, (BasePay + OvertimePay + OtherPay)/3 as avg_of_bp_otp_op from salaries;

-- 9	Show all employee who have the word "Manager" in their job title
select EmployeeName, JobTitle from salaries
where JobTitle like '%Manager%';

-- 10	Show all employees with a job title not equal to "Manager"
select EmployeeName, JobTitle from salaries
where JobTitle != 'Manager';

-- 11	Show all employees with a total pay between 50000 and 750000
select * from salaries
where TotalPay >= 50000 and TotalPay <= 750000;

select * from salaries
where TotalPay between 50000 and 750000;

-- 12	show all employees with a BasePay less than 50000 or a TotalPay greater than 100000
select * from salaries
where BasePay <= 50000 and TotalPay >= 100000;

-- 13	Show all employees with a TotalPayBenefits value between 125000 and 150000 and a job title containing the word "Director"
select * from salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle like '%Director%';

-- 14	Show all employees ordered by their TotalPayBenefits in descending order
select * from salaries
order by TotalPayBenefits desc;

-- 15	Show all JobTitles with an average BasePay of atleast 100000 and order them by the average BasePay in descending order
select JobTitle, AVG(BasePay) as "avg_base_pay" from salaries
group by JobTitle
having AVG(BasePay) >= 100000
order by avg_base_pay desc;

-- 16	Delete the column
select * from salaries;
alter table salaries
drop column Notes;
select * from salaries;

-- 17	Update the BasePay of all employees with the job title containing "Manager" by increasing it by 10%
update salaries
set BasePay = BasePay * 1.1
where JobTitle like "%Manager%";
SET SQL_SAFE_UPDATES = 0;

select * from salaries;

-- 18	Delete all employees who have no BasePay

select * from salaries
where OvertimePay =0;

select count(*) from salaries
where OvertimePay =0;
delete from salaries
where OvertimePay = 0;







