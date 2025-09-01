create database tableau_project_1;
use tableau_project_1;
select * from depression;

-- Analyzing The Gender Column
select Gender, count(*) from depression
group by Gender;

-- Changing Male by 'M' and Female by 'F' 
Update depression
set Gender = Case 
					when Gender = 'Female' then 'F'
                    When Gender = 'Male' then 'M'
                    else Gender
                    end;

-- Analyzing The Age Column
select age, count(*) from depression
group by age
order by age;

-- Adding an Age_Group Column
alter table depression
add Age_Groups varchar(50);
update depression
set Age_Groups = Case
				when Age between 18 and 24 then 'A1'
                when Age between 25 and 30 then 'A2'
                else 'A3'
                end;

-- Adding the Index Column
alter table depression
add index_column int auto_increment primary key;

