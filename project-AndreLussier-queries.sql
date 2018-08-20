select count(STUID), Advisor
from student
Group by Advisor;

select * 
from student
where DormName = 'Ribbon hall';

select *
from student
order by lastname;

select Firstname, LastName, AlumniEmail, CompanyName
From mentors
where AlumniEmail = MentorEmail; -- this has to be added or mentors that are not alumni will be included 
-- also AlumniEmail Not NULL