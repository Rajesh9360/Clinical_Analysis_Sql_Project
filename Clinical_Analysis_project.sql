                                             # SQL Clinic Project
# Attribute name

# Name-Patient_Name || BP- Blood_Pressure || Chlstrl - Chlosterol || Age - Age || Pregnant || Anxty - Anxity || Drug_Reaction										

#Database: clinictrial
#  Hospital Queries
create database clinictrial;
use clinictrial;
show tables from clinictrial;
select * from clinictrial_data;
Rename table clinictrial_data to clinic_data;
select count(*) from clinic_data;

select * from clinic_data;

-- 1. Describe the schema of table
show tables;
select * from clinic_data;
describe clinic_data;

-- 2. Find average of Age
select Avg(age) Average_age from clinic_data;
# 3. Find minimum of Age
select min(age) as Minimum_Age from clinic_data;


# 4. Find maximum of Age
select max(age) Maximum_age  from clinic_data;
# 5. Find average age of those were pregnant and not pregnant
select * from clinic_data;
select pregnant,round(avg(Age),0) Average_Age from clinic_data group by pregnant;

# 6. Find average blood pressure of those had drug reaction and did not had drug reaction
select drug_reaction,round(avg(BP),0) as Average_BP from clinic_data group by drug_reaction;

# 7. Add new column name as ‘Age_group’ and those having age between 16 & 21 should be categorized as Low, more than 21 and less than 35 should be categorized as Middle and above 35 should be categorized as High.
select Age,case when Age between 16 and 21 then  'Low' when Age between 21 and 35 then 'Middle' when Age >35 then 'High' end 'Age_Group' from clinic_data;

select * from clinic_data;
alter table clinic_data add column Age_Group varchar(10) after Age ;
select * from clinic_data;

update clinic_data 
set Age_Group = case when Age between 16 and 21 
then  'Low' when Age between 21 and 35 then 'Middle' 
when Age >35 then 'High' end ;

select * from clinic_data;

# 8. Change ‘Age’ of Reetika to 32
update clinic_data set Age=32 where name ='Reetika';
select * from clinic_data;

# 9. Change name of Reena as Shara’
update clinic_data set Name='Shara' where Name='Reena';

# 10. Remove Chlstrl column
select * from clinic_data;
alter table clinic_data drop column chlstrl;
select * from clinic_data;

# 11. Select only Name, Age and BP
select Name,Age,BP from clinic_data;

# 12. Select ladies whose first name starts with ‘E’
select * from clinic_data;
select * from clinic_data where Name like 'E%';

# 13. Select ladies whose Age_group were Low
select * from clinic_data where age_group ='Low';

# 14. Select ladies whose Age_group were High
select * from clinic_data where age_group='High';

# 15. Select ladies whose name starts with ‘A’ and those were pregnant
select Name,Pregnant from clinic_data where Name like 'A%' and Pregnant='Yes';

# 16. Identify ladies whose BP was more than 120
select * from clinic_data where BP>120;

# 17. Identify ladies whose BP was between 100 and 120
select * from clinic_data where BP between 100 and 120;

# 18. Identify ladies who had low anxiety aged less than 30
select * from clinic_data where Anxty_LH = 'No' and age<30;

# 19. Select ladies whose name ends with ‘i’
select * from clinic_data where Name like '%i';

# 20. Select ladies whose name ends with ‘a’
select * from clinic where Name like '%a';

