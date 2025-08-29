use Hospital


create table Nurse(
	id int primary key,
	name varchar(50),
	address varchar(100),
	ward_id int
)

create table Ward(
	id int primary key,
	name varchar(50),
	nurse_id int
)
create table Drug(
	code int primary key,
	dosage int
)

create table Patient(
	id int primary key,
	name varchar(50),
	dateOfBirth date,
	ward_id int,
	consultant_id int
)

create table Consultant(
	id int primary key,
	name varchar(50),
)

create table Drug_brand(
	code int,
	brand varchar(50),
)

create table ConsultantExamine(
	patient_id int,
	consultant_id int
)

create table DrugRecords(
	nurse_num int,
	drug_code int,
	dTime time,
	dDate date,
	dosage int,
	patient_id int
)

alter table Ward
add constraint fk1
FOREIGN key(nurse_id) References Nurse(id); 

alter table Nurse 
add constraint fk2
foreign key(ward_id) references Ward(id);

alter table DrugRecords
add constraint fk3
foreign key(nurse_num) references Nurse(id); 

alter table Patient
add constraint fk4
foreign key(ward_id) references Ward(id); 

alter table DrugRecords
add constraint fk5
foreign key(patient_id) references Patient(id); 

alter table DrugRecords
add constraint fk6
foreign key(drug_code) references Drug(code); 

alter table Drug_brand
add constraint fk7
foreign key(code) references Drug(code); 

alter table Patient
add constraint fk8
foreign key(consultant_id) references Consultant(id);

alter table ConsultantExamine
add constraint fk9
foreign key(patient_id) references Patient(id); 

alter table ConsultantExamine
add constraint fk10
foreign key(consultant_id) references Consultant(id);

ALTER TABLE DrugRecords
ALTER COLUMN drug_code int NOT NULL;

ALTER TABLE DrugRecords
add constraint Pk1
primary key(drug_code,dDate,dTime);

ALTER TABLE ConsultantExamine
ALTER COLUMN patient_id int NOT NULL;
ALTER TABLE ConsultantExamine
ALTER COLUMN consultant_id int NOT NULL;

ALTER TABLE ConsultantExamine
add constraint Pk2
primary key(patient_id,consultant_id);


alter table Drug_brand
alter column code int not null;

alter table Drug_brand
add constraint Pk3
primary key(code,brand);




