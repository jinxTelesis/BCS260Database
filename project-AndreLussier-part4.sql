
--                              id     last    first   advisor      enrolled        dormname    roomnum   phone      date         degree
INSERT INTO STUDENT VALUES(40000011,'Reznor','Trent','Dr Thomas','Matericulated','bacon hall','108','603-487-9812','1999-08-21','Computer Science',
'Trent.Reznor@yahoo.com');

INSERT INTO STUDENT VALUES(40000012,'Keenan','Maynord','Dr Aydin','Matericulated','Ribbon hall','109','607-687-9812','1998-07-10','Biology',
'Maynord.Keenan@yahoo.com');

INSERT INTO STUDENT VALUES(40000013,'Moreno','Chino','Bruce Walden','Matericulated','Grey hall','210','603-487-9812','2002-03-25','Computer Science',
'Chino.Moreno@yahoo.com'); -- worked

--         
--
--                                           id      last     first   email                         phone
INSERT INTO ALUMNI(ALUID, LastName, FirstName, Email, PhoneNumber,
HomeAddress, HomeCity, HomeState, HomeZip) Values (40000202,'Smith', 'John','John.Smith@students.hu.edu','777-483-2232',
'117 Franklin Street','Worchester', 'MA', '18071');
-- address           --
INSERT INTO ALUMNI(ALUID, LastName, FirstName, Email, PhoneNumber,
HomeAddress, HomeCity, HomeState, HomeZip) Values (40000203, 'Waters', 'Emily', 'Emily.Waters@students.hu.edu','607-555-1717',
'1800 Rainbow Road', 'San francisco', 'CA', '17713'); 

INSERT INTO ALUMNI(ALUID, LastName, FirstName, Email, PhoneNumber,
HomeAddress, HomeCity, HomeState, HomeZip) Values (400000204, 'Gears', 'Taylor','Taylor.Gears@students.hu.edu','508-243-1891',
'99 Gecko Drive', 'Hubardston', 'CA', '19010'); -- worked

--
--

INSERT INTO FACULTY(FACID, LastName,FirstName,Department,EmailUID,OfficeBuildingName, OfficePhone, OfficeBuildingRoom)
Values (80000201, 'Cromwell','Fredrick','Computer Science','Fredrick.Cromwell@hu.edu','Brown Hall','877-567-8888','2008');

INSERT INTO FACULTY(FACID, LastName,FirstName,Department,EmailUID,OfficeBuildingName, OfficePhone, OfficeBuildingRoom)
Values (80000202, 'Ulf','Nero','Astrophysics','Nero.Ulf@hu.edu','Brown Hall','877-567-9881','Observitory');

INSERT INTO FACULTY(FACID, LastName,FirstName,Department,EmailUID,OfficeBuildingName, OfficePhone, OfficeBuildingRoom)
Values (80000203, 'Chesterfield','Rengar','Nuclear Engineering','Rengar.Chesterfield@hu.edu','Whitman','977-517-9001','Janitor Closet'); -- worked

--
--

INSERT INTO COMPANY(CompanyName, CompanyPhone, CompanyAddress, CompanyCity, CompanyState) values
('Dunder N Mifflin', '431-877-5608','1080 Bruce Street','NeitherHereNoreThere','NC');

INSERT INTO COMPANY(CompanyName, CompanyPhone, CompanyAddress, CompanyCity, CompanyState) values
('Hammermill Company', '438-171-4008','9991 Maryville Lane','Center View','CA');

INSERT INTO COMPANY(CompanyName, CompanyPhone, CompanyAddress, CompanyCity, CompanyState) values
('Microsoft', '999-777-5555','Buying Out Google Drive','High Castle','CA'); -- worked


-- could be from alumni or could be seperate email
INSERT INTO MENTORS(MentorEmail,LastName, FirstName, CompanyName,CompanyState,AlumniEmail) VALUES('John.Smith@students.hu.edu',
'Smith','John', 'Dunder N Mifflin', 'NC', 'John.Smith@students.hu.edu'); 

INSERT INTO MENTORS(MentorEmail,LastName, FirstName, CompanyName,CompanyState,AlumniEmail) VALUES('Emily.Waters@students.hu.edu','Waters','Emily',
'HammerMill Company','CA','Emily.Waters@students.hu.edu');

INSERT INTO MENTORS(MentorEmail,LastName, FirstName, CompanyName,CompanyState,AlumniEmail) VALUES(
'Taylor.Gears@students.hu.edu', 'Gears','Taylor','Microsoft','CA','Taylor.Gears@students.hu.edu');

--
--

INSERT INTO STUFACAS(STUIDAS, FACIDAS, StartDate, EndDate) VALUES
(40000011,80000201,'2020-06-25','2022-06-24');

INSERT INTO STUFACAS(STUIDAS, FACIDAS, StartDate, EndDate) VALUES
(40000012,80000202,'2020-06-25','2022-06-24');

INSERT INTO STUFACAS(STUIDAS, FACIDAS, StartDate, EndDate) VALUES
(40000013,80000203,'2020-06-25','2022-06-24');

--
--

INSERT INTO STU_MENTOR_AS(STUIDMENT,MentorEmail,StartDate, EndDate) VALUES
(40000011,'John.Smith@students.hu.edu', '2020-06-25','2022-06-24');

INSERT INTO STU_MENTOR_AS(STUIDMENT,MentorEmail,StartDate, EndDate) VALUES
(40000012,'Emily.Waters@students.hu.edu', '2020-06-25','2022-06-24');

INSERT INTO STU_MENTOR_AS(STUIDMENT,MentorEmail,StartDate, EndDate) VALUES
(40000013,'Taylor.Gears@students.hu.edu', '2020-06-25','2022-06-24');

--
--

INSERT INTO ment_assignment(FACIDAS,MentorEmail,StartDate,EndDate) VALUES
(80000201,'John.Smith@students.hu.edu','2020-06-25','2022-06-24');

INSERT INTO ment_assignment(FACIDAS,MentorEmail,StartDate,EndDate) VALUES
(80000202,'Emily.Waters@students.hu.edu','2020-06-25','2022-06-24');

INSERT INTO ment_assignment(FACIDAS,MentorEmail,StartDate,EndDate) VALUES
(80000203,'Taylor.Gears@students.hu.edu','2020-06-25','2022-06-24');

