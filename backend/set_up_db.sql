create database if not exists dawgs_the_tee;

USE dawgs_the_tee;

create table if not exists employee(
	id INT AUTO_INCREMENT PRIMARY KEY,
	employee_type ENUM('MANAGER', 'ADMIN', 'STAFF'),
	nickname VARCHAR (40),
	email VARCHAR(40),
	gender ENUM('M','F')
);

create table if not exists availability(
	id INT,
	workday INT,
	start_work_hour TIME,
	end_work_hour TIME,
	FOREIGN KEY id REFERENCES employee(id),
);

create table if not exists employee_login(
	id INT,
	username VARCHAR(40),
	password VARCHAR(40),
	FOREIGN KEY id REFERENCES employee(id),
);

create table if not exists shift_type(
	id INT,
	shift_type ENUM('S','R','C','RR','ST','T'),
	FOREIGN KEY id REFERENCES employee(id),
);

create table shift_preferences (
  id INT,
  pref_num_shifts INT,
  pref_weekends BOOL,
  FOREIGN KEY (id) REFERENCES employee (id)
);

/********* INSERT INTO EMPLOYEE TABLE ***************/

insert into employee (employee_type, nickname, gender)
	values ('ADMIN','Evan','M');

insert into employee (employee_type, nickname, gender)
	values ('ADMIN','Nathan','M');

insert into employee (employee_type, nickname, gender)
	values ('MANAGER','Matt','M');

insert into employee (employee_type, nickname, gender)
	values ('MANAGER','John','M');

insert into employee (employee_type, nickname, gender)
	values ('MANAGER','Jackson','M');

insert into employee (employee_type, nickname, gender)
	values ('MANAGER','Clint','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Griffin','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Parker','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Robby','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Zach','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Brooke','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Carly','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Don','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Jeff','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Jack','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Ron','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Bob','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Mike C','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Ernest','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Steve','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Mike L','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Patrick','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Hudson','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Jake E','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Nathan A','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Jake L','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Ethan','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Avery','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Alex','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Cammie','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Asa','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Charles','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Colton','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Tanner','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Riggs','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Andrew S','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Nevada','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Cannon','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Andrew T','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Noah','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Juliana','F');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Joe','M');

insert into employee (employee_type, nickname, gender)
	values ('STAFF','Rusty','M');

/******************************** INSERT INTO AVAILABILITY TABLES *****************/

/* Evan availability*/

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 1, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 1, '17:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 2, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 3, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 3, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 4, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 5, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(1, 6, '00:00:00', '24:00:00');

/* Griffin Availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 1, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 1, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 2, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 3, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 3, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 4, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 5, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 5, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(7, 6, '00:00:00', '24:00:00');

/* Parker availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 1, '00:00:00', '14:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 3, '00:00:00', '14:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 4, '00:00:00', '14:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(8, 6, '00:00:00', '24:00:00');

/* Robby availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 2, '14:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 4, '14:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(9, 6, '00:00:00', '24:00:00');

/* Zach availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 2, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 4, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 5, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(10, 6, '00:00:00', '24:00:00');

/* Carly availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 1, '00:00:00', '9:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 1, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 2, '00:00:00', '13:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 3, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 4, '00:00:00', '13:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 4, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 5, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(12, 6, '00:00:00', '24:00:00');

/* Don availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(13, 6, '00:00:00', '24:00:00');

/* Jack availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(15, 6, '00:00:00', '24:00:00');

/* Bob availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(17, 6, '00:00:00', '24:00:00');

/* Ernest availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(19, 6, '00:00:00', '24:00:00');

/* Mike L availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 1, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 2, '00:00:00', '11:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 3, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 3, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 4, '00:00:00', '11:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(21, 6, '00:00:00', '24:00:00');

/* Patrick availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 2, '00:00:00', '8:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 4, '00:00:00', '8:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(22, 6, '00:00:00', '24:00:00');

/* Hudson availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(23, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(23, 6, '00:00:00', '24:00:00');

/* Jake E availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(24, 6, '00:00:00', '24:00:00');

/* Jake L availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 1, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 3, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 5, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 5, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(26, 6, '00:00:00', '24:00:00');

/* Ethan availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 1, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 3, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 5, '00:00:00', '8:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 5, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(27, 6, '00:00:00', '24:00:00');

/* Alex availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 1, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 2, '11:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 3, '00:00:00', '8:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 4, '00:00:00', '8:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 4, '11:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 5, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(29, 6, '00:00:00', '24:00:00');

/* Cammie availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 1, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 2, '14:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 3, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 4, '14:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 5, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(30, 6, '00:00:00', '24:00:00');

/* Asa availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 1, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 1, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 3, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 3, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 5, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 5, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(31, 6, '00:00:00', '24:00:00');



/* Charles availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 1, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 2, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 3, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 4, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 5, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 5, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(32, 6, '00:00:00', '24:00:00');

/* Colton availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 1, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 1, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 2, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 3, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 3, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 4, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 5, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 5, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(33, 6, '00:00:00', '24:00:00');

/* Tanner availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(34, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(34, 6, '00:00:00', '24:00:00');

/* Riggs availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(35, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(35, 4, '00:00:00', '13:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(35, 6, '00:00:00', '24:00:00');

/* Andrew S availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 1, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 2, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 2, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 3, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 4, '00:00:00', '08:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 4, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 5, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(36, 6, '00:00:00', '24:00:00');

/* Nevada availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 1, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 3, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 4, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 5, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 5, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(37, 6, '00:00:00', '24:00:00');

/* Cannon availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 1, '12:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 2, '00:00:00', '11:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 2, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 3, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 4, '00:00:00', '11:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 4, '17:30:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 5, '00:00:00', '09:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 5, '14:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(38, 6, '00:00:00', '24:00:00');

/* Andrew T availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 1, '00:00:00', '12:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 1, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 2, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 2, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 3, '00:00:00', '12:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 3, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 4, '00:00:00', '10:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 4, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 5, '00:00:00', '12:45:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(39, 6, '00:00:00', '24:00:00');

/* Noah availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 1, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 1, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 2, '00:00:00', '13:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 2, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 3, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 3, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 5, '00:00:00', '08:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 5, '15:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(40, 6, '00:00:00', '24:00:00');

/* Juliana availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 1, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 2, '00:00:00', '13:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 3, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 4, '00:00:00', '13:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 5, '13:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(41, 6, '00:00:00', '24:00:00');

/* Joe availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 1, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 1, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 3, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 3, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 5, '00:00:00', '11:30:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 5, '16:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(42, 6, '00:00:00', '24:00:00');

/* Rusty availability */

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(43, 0, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(43, 2, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(43, 4, '00:00:00', '24:00:00');

insert into availability (id, workday, start_work_hour, end_work_hour)
  values(43, 6, '00:00:00', '24:00:00');

/******************************* INSERT INTO SHIFT_PREFERENCES TABLE ******************/

/* Parker */

insert into shift_preferences (id, pref_num_shifts)
  values(8, 3);

/* Robby */
insert into shift_preferences (id, pref_num_shifts)
  values(9, 2);

/* Carly */
insert into shift_preferences (id, pref_num_shifts)
  values(12, 3);

/* Ernest */
insert into shift_preferences (id, pref_num_shifts)
  values(19, 2);

/* Patrick */
insert into shift_preferences (id, pref_num_shifts)
  values(22, 2);

/* Jake E */

insert into shift_preferences (id, pref_num_shifts)
  values(24, 2);

/**************************** INSERT INTO SHIFT_TYPE TABLE *****************************/
/* ENUM ('C', 'R','RR', 'S', 'ST', 'T') */

/* Evan */

insert into shift_type (id, shift_type)
  values (1, 'S');

insert into shift_type (id, shift_type)
  values (1, 'R');

insert into shift_type (id, shift_type)
  values (1, 'RR');

insert into shift_type (id, shift_type)
  values (1, 'C');

/* Griffin */

insert into shift_type (id, shift_type)
  values (7, 'S');

insert into shift_type (id, shift_type)
  values (7, 'C');

insert into shift_type (id, shift_type)
  values (7, 'R');

insert into shift_type (id, shift_type)
  values (7, 'RR');

/* Parker */

insert into shift_type (id, shift_type)
  values (8, 'S');

insert into shift_type (id, shift_type)
  values (8, 'C');

insert into shift_type (id, shift_type)
  values (8, 'R');

insert into shift_type (id, shift_type)
  values (8, 'RR');

/*Robby */

insert into shift_type (id, shift_type)
  values (9, 'S');

insert into shift_type (id, shift_type)
  values (9, 'C');

insert into shift_type (id, shift_type)
  values (9, 'R');

insert into shift_type (id, shift_type)
  values (9, 'RR');

/* Zach */

insert into shift_type (id, shift_type)
  values (10, 'S');

insert into shift_type (id, shift_type)
  values (10, 'C');

insert into shift_type (id, shift_type)
  values (10, 'R');

insert into shift_type (id, shift_type)
  values (10, 'RR');

/* Brooke */

insert into shift_type (id, shift_type)
  values (11, 'S');

insert into shift_type (id, shift_type)
  values (11, 'C');

insert into shift_type (id, shift_type)
  values (11, 'R');

insert into shift_type (id, shift_type)
  values (11, 'RR');

/* Carly */

insert into shift_type (id, shift_type)
  values (12, 'S');

insert into shift_type (id, shift_type)
  values (12, 'C');

insert into shift_type (id, shift_type)
  values (12, 'R');

insert into shift_type (id, shift_type)
  values (12, 'RR');

/* Don */

insert into shift_type (id, shift_type)
  values (13, 'ST');

/* Jeff */

insert into shift_type (id, shift_type)
  values (14, 'ST');

/* Jack */

insert into shift_type (id, shift_type)
  values (15, 'ST');

/* Ron */

insert into shift_type (id, shift_type)
  values (16, 'ST');

/* Bob */

insert into shift_type (id, shift_type)
  values (17, 'ST');

/* Mike C */

insert into shift_type (id, shift_type)
  values (18, 'ST');

/*Ernest*/

insert into shift_type (id, shift_type)
  values (19, 'ST');

/* Steve */

insert into shift_type (id, shift_type)
  values (20, 'ST');

/* Mike L */

insert into shift_type (id, shift_type)
  values (21, 'C');

insert into shift_type (id, shift_type)
  values (21, 'R');

insert into shift_type (id, shift_type)
  values (21, 'RR');

/* Patrick */

insert into shift_type (id, shift_type)
  values (22, 'C');

insert into shift_type (id, shift_type)
  values (22, 'R');

insert into shift_type (id, shift_type)
  values (22, 'RR');

/* Hudson */

insert into shift_type (id, shift_type)
  values (23, 'C');

insert into shift_type (id, shift_type)
  values (23, 'R');

/* Jake E */

insert into shift_type (id, shift_type)
  values (24, 'C');

insert into shift_type (id, shift_type)
  values (24, 'R');

/* Nathan A */

insert into shift_type (id, shift_type)
  values (25, 'C');

insert into shift_type (id, shift_type)
  values (25, 'R');

insert into shift_type (id, shift_type)
  values (25, 'RR');

/* Jake L */

insert into shift_type (id, shift_type)
  values (26, 'C');

insert into shift_type (id, shift_type)
  values (26, 'R');

insert into shift_type (id, shift_type)
  values (26, 'RR');

/* Ethan */

insert into shift_type (id, shift_type)
  values (27, 'C');

insert into shift_type (id, shift_type)
  values (27, 'R');

insert into shift_type (id, shift_type)
  values (27, 'RR');

/* Avery */

insert into shift_type (id, shift_type)
  values (28, 'C');

insert into shift_type (id, shift_type)
  values (28, 'R');

insert into shift_type (id, shift_type)
  values (28, 'RR');

/* Alex */

insert into shift_type (id, shift_type)
  values (29, 'C');

insert into shift_type (id, shift_type)
  values (29, 'R');

insert into shift_type (id, shift_type)
  values (29, 'RR');

/* Cammie */

insert into shift_type (id, shift_type)
  values (30, 'C');

insert into shift_type (id, shift_type)
  values (30, 'R');

insert into shift_type (id, shift_type)
  values (30, 'RR');

/* Asa */

insert into shift_type (id, shift_type)
  values (31, 'C');

insert into shift_type (id, shift_type)
  values (31, 'R');

insert into shift_type (id, shift_type)
  values (31, 'RR');

/* Charles */

insert into shift_type (id, shift_type)
  values (32, 'C');

insert into shift_type (id, shift_type)
  values (32, 'R');

insert into shift_type (id, shift_type)
  values (32, 'RR');

/* Colton */

insert into shift_type (id, shift_type)
  values (33, 'C');

insert into shift_type (id, shift_type)
  values (33, 'R');

insert into shift_type (id, shift_type)
  values (33, 'RR');

/* Tanner */

insert into shift_type (id, shift_type)
  values (34, 'C');

insert into shift_type (id, shift_type)
  values (34, 'R');

insert into shift_type (id, shift_type)
  values (34, 'RR');

/* Riggs */

insert into shift_type (id, shift_type)
  values (35, 'C');

insert into shift_type (id, shift_type)
  values (35, 'R');

/* Andrew S */

insert into shift_type (id, shift_type)
  values (36, 'C');

insert into shift_type (id, shift_type)
  values (36, 'R');

/* Nevada */

insert into shift_type (id, shift_type)
  values (37, 'C');

insert into shift_type (id, shift_type)
  values (37, 'R');

insert into shift_type (id, shift_type)
  values (37, 'RR');

/* Cannon */

insert into shift_type (id, shift_type)
  values (38, 'C');

insert into shift_type (id, shift_type)
  values (38, 'R');

insert into shift_type (id, shift_type)
  values (38, 'RR');

/* Andrew T */

insert into shift_type (id, shift_type)
  values (39, 'C');

insert into shift_type (id, shift_type)
  values (39, 'R');

/* Noah */

insert into shift_type (id, shift_type)
  values (40, 'C');

insert into shift_type (id, shift_type)
  values (40, 'R');

/* Juliana */

insert into shift_type (id, shift_type)
  values (41, 'C');

insert into shift_type (id, shift_type)
  values (41, 'R');

insert into shift_type (id, shift_type)
  values (41, 'RR');

/* Joe */

insert into shift_type (id, shift_type)
  values (42, 'T');

/* Rusty */

insert into shift_type (id, shift_type)
  values (43, 'T');

















