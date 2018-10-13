drop database if exists ImpactVolunteer;
create database ImpactVolunteer;

create table EmailList(
firstName varchar(50),
lastName varchar(50),
email varchar(100),
phoneNumber varchar(20) 
);

alter table EmailList add constraint PK_EmailList PRIMARY KEY (firstName, emailAddress);


create table EventbriteData(
ID int , 
orderNumber varchar(15),
eventID varchar(15),
firstName varchar(50),
lastName varchar(50),
email varchar(100),
phoneNumber varchar(100),
schoolName varchar (150),
schoolSuburb varchar(150)
)

create index idx_eventbrite
on EventbriteData (eventID, FirstName);

alter table EventbriteData add constraint PK_EventbriteData AUTO_INCREMENT primary key (ID);

-- from google from termporarily
create table ExtraInfoFromForm(
ID int,
email varchar(100),
preferredFirstName varchar(50),
respondWith varchar(200),
birthDate varchar(10),
postcode varchar(5),
helpImpactWith varchar(255),
expertise varcar(255)
)

create index idx_eventbrite
on ExtraInfoFromForm (email, preferredFirstName);

alter table ExtraInfoFromForm add constraint PK_ExtraInfoFromForm AUTO_INCREMENT primary key (ID);
