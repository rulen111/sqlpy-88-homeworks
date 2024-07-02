CREATE TABLE IF NOT exists departments (
	department_id serial primary key,
	name varchar(40) not null
);

CREATE TABLE IF NOT exists bosses (
	boss_id serial primary key,
	name varchar(40) not null,
	department integer references departments(department_id)
);

CREATE TABLE IF NOT exists employee (
	employee_id serial primary key,
	name varchar(40) not null,
	department integer references departments(department_id),
	boss integer references bosses(boss_id)
);