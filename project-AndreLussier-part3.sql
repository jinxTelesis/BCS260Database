

CREATE TABLE STUDENT( -- check uniques last
STUID	Int NOT NULL unique,
LastName Char(50) NOT NULL,
FirstName Char(30) NOT NULL,
Advisor Char(50) NOT NULL,
Enrolled Char(40) null,
DormName Char(40) NOT NULL,
DormRoomNum Char(12) NULL,
DormPhoneNum Char(12) NULL, -- update phone number
Graduate Date NOT NULL,
Degree Char(30) NOT NULL,
EmailUID Char(60) NOT NULL,
Constraint STUDENT_PK PRIMARY KEY(STUID)

);

CREATE TABLE ALUMNI( -- update phone number to 12 in documentation
ALUID Int NOT NULL unique,
LastName Char(50) NOT NULL,
FirstName Char(30) NOT NULL,
Email Char(60) NOT NULL unique,
PhoneNumber Char(12) NOT NULL,
HomeAddress Char(75) NOT NULL,
HomeCity Char(60) Not NULL,
HomeState Char(2) Not NULL,
HomeZip int Not NULL,
constraint ALUMNI_PK PRIMARY KEY(ALUID)
);

CREATE TABLE FACULTY(
FACID int NOT NULL unique,
LastName Char(50) NOT NULL,
FirstName Char(30) NOT NULL,
Department Char(30) NOT NULL,
EmailUID Char(60) NOT NULL,
OfficeBuildingName Char(30) Not NULL,
OfficePhone Char(12) Not NULL, -- update phone
OfficeBuildingRoom Char(15) Not NULL,
constraint FACULTY_PK PRIMARY KEY(FACID)

);

CREATE Table COMPANY(
CompanyName Char(60) NOT NULL,
CompanyPhone Char(12) NOT NULL, -- update phone
CompanyAddress Char(75) NOT NULL,
CompanyCity Char(60) Not NULL,
CompanyState Char(2) Not NUll,
constraint COMPANY_PK PRIMARY KEY(CompanyName)
);

CREATE TABLE MENTORS( 
MentorEmail Char(60) NOT NULL, 
LastName Char(50) NOT NULL,
FirstName Char(30) NOT NULL,
CompanyName Char(60) NOT NULL,
CompanyState Char(2) NOT NULL,
AlumniEmail char(60) NULL, -- changed

constraint Mentor_PK PRIMARY KEY(MentorEmail),
constraint MENTORS_FK2 foreign key(CompanyName)
	references COMPANY(CompanyName) on update cascade,
constraint Alumni_FK2 foreign key(AlumniEmail)
	references ALUMNI(Email) on update cascade
);

CREATE TABle STUFACAS(
STUIDAS int NOT NULL,
FACIDAS int NOT NULL,
StartDate Date NOT NULL,
EndDate Date NOT NULL,
constraint STUFACAS_PK PRIMARY KEY(STUIDAS, FACIDAS),
constraint STUDACAS_FK1 foreign key(STUIDAS)
references STUDENT(STUID) on update cascade,
constraint STUFACAS_FK2 foreign key(FACIDAS)
references FACULTY(FACID) on update cascade
);

CREATE TABLE STU_MENTOR_AS(
STUIDMENT int NOT NULL,
MentorEmail Char(60) NOT NULL,
StartDate Date NOT NULL,
EndDate Date NOT NULL,
constraint STU_MENTOR_AS_PK PRIMARY KEY(STUIDMENT, MentorEmail),
constraint STUASSIGNMENTFK foreign key(STUIDMENT)
references STUDENT(STUID) on update cascade,
constraint STUMENTOR_AS_FK1000 foreign key(MentorEmail)
	references MENTORS(MentorEmail) on update cascade
);

CREATE TABLE MENT_ASSIGNMENT( -- change so local and non local are dif
FACIDAS int NOT NULL,
MentorEmail Char(60) NOT NULL,
StartDate Date NOT NULL,
EndDate Date NOT NULL,
constraint MENT_ASSIGNMENT PRIMARY KEY(FACIDAS, MentorEmail), -- worked
constraint MENT_ASSIGNMENTFK1 foreign key(FACIDAS) references FACULTY(FACID) on update cascade, -- worked
constraint MENT_ASSIGNMENTFK2 foreign key(MentorEmail)
references MENTORS(MentorEmail) on update cascade -- pk can't be two dif types?
);




