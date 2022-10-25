create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('BabaVoz1'),
		('BabaVoz2'),
		('BabaVoz3'),
		('BabaVoz4'),
		('BabaVoz5'),
		('BabaVoz6'),
		('BabaVoz7'),
		('BabaVoz8'),
		('BabaVoz9'),
		('BabaVoz10'),
		('BabaVoz11'),
		('BabaVoz12'),
		('BabaVoz13'),
		('BabaVoz14'),
		('BabaVoz15'),
		('BabaVoz16'),
		('BabaVoz17'),
		('BabaVoz18'),
		('BabaVoz19'),
		('BabaVoz20'),
		('BabaVoz21'),
		('BabaVoz22'),
		('BabaVoz23'),
		('BabaVoz24'),
		('BabaVoz25'),
		('BabaVoz26'),
		('BabaVoz27'),
		('BabaVoz28'),
		('BabaVoz29'),
		('BabaVoz30'),
		('BabaVoz31'),
		('BabaVoz32'),
		('BabaVoz33'),
		('BabaVoz34'),
		('BabaVoz35'),
		('BabaVoz36'),
		('BabaVoz37'),
		('BabaVoz38'),
		('BabaVoz39'),
		('BabaVoz40'),
		('BabaVoz41'),
		('BabaVoz42'),
		('BabaVoz43'),
		('BabaVoz44'),
		('BabaVoz45'),
		('BabaVoz46'),
		('BabaVoz47'),
		('BabaVoz48'),
		('BabaVoz49'),
		('BabaVoz50'),
		('BabaVoz51'),
		('BabaVoz52'),
		('BabaVoz53'),
		('BabaVoz54'),
		('BabaVoz55'),
		('BabaVoz56'),
		('BabaVoz57'),
		('BabaVoz58'),
		('BabaVoz59'),
		('BabaVoz60'),
		('BabaVoz61'),
		('BabaVoz62'),
		('BabaVoz63'),
		('BabaVoz64'),
		('BabaVoz65'),
		('BabaVoz66'),
		('BabaVoz67'),
		('BabaVoz68'),
		('BabaVoz69'),
		('BabaVoz70');

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values  (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(2, 3),
		(4, 5),
		(6, 6),
		(7, 8),
		(8, 11),
		(9, 12),
		(10, 14),
		(28, 15),
		(38, 16),
		(48, 17),
		(55, 18),
		(61, 19),
		(39, 20),
		(44, 21),
		(54, 17),
		(65, 15),
		(69, 3),
		(47, 12),
		(17, 11),
		(80, 21),
		(79, 16),
		(78, 18),
		(77, 19),
		(76, 20),
		(75, 9),
		(74, 5),
		(73, 9),
		(72, 9),
		(71, 9);

create table roles(
	id serial primary key,
	role_title int unique not null
);

ALTER TABLE roles ALTER COLUMN role_title varchar (50) unique not null;

insert into roles(role_title)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
values  (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(34, 3),
		(6, 4),
		(33, 7),
		(1, 1),
		(2, 3),
		(4, 5),
		(14, 6),
		(8, 8),
		(9, 10),
		(12, 11),
		(13, 12),
		(15, 14),
		(16, 15),
		(17, 16),
		(18, 17),
		(19, 18),
		(21, 19),
		(69, 20),
		(66, 19),
		(63, 18),
		(59, 17),
		(47, 16),
		(36, 15),
		(28, 14),
		(55, 12),
		(44, 11),
		(56, 20),
		(54, 8),
		(32, 6),
		(26, 5),
		(29, 3),
		(31, 1);
	
insert into roles_salary(id_role, id_salary)
values 	(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 14),
		(10, 15),
		(11, 16),
		(12, 17),
		(13, 18),
		(14, 19),
		(15, 20),
		(16, 21),
		(17, 14),
		(18, 8),
		(19, 20),
		(20, 1);
		
	
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;
select * from roles_salary;

1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees 
join employee_salary
on employees.id = employee_id
join salary
on salary.id = salary_id;

 2. Вывести всех работников у которых ЗП меньше 2000.
 
select employee_name, monthly_salary 
from employees
join employee_salary
on employees.id = employee_id
join salary
on salary.id = salary_id
where monthly_salary < 2000;
 
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select monthly_salary
from salary
join employee_salary
on salary.id = salary_id
where employee_id not in (select employees.id from employees);

 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select monthly_salary
from salary
join employee_salary
on salary.id = salary_id
where employee_id not in (select employees.id from employees) and monthly_salary < 2000;
 
 5. Найти всех работников кому не начислена ЗП.
 
select employee_name
from employees
join employee_salary
on employees.id = employee_id
where salary_id not in (select salary.id from salary);
 
 6. Вывести всех работников с названиями их должности.
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id;
 
 7. Вывести имена и должность только Java разработчиков.
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id
where role_title like '%Java%';
 
 8. Вывести имена и должность только Python разработчиков.
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id
where role_title like '%Python%';
 
 9. Вывести имена и должность всех QA инженеров.
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id
where role_title like '%QA%';
 
 10. Вывести имена и должность ручных QA инженеров.
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id
where role_title like '%Manual QA%';
 
 11. Вывести имена и должность автоматизаторов QA
 
select employee_name, role_title
from employees 
join roles_employee
on employees.id = employee_id
join roles
on roles.id = role_id
where role_title like '%Automation QA%';
 
 12. Вывести имена и зарплаты Junior специалистов
 
 

 13. Вывести имена и зарплаты Middle специалистов
 

 
 14. Вывести имена и зарплаты Senior специалистов
 

 
 15. Вывести зарплаты Java разработчиков
 
select role_title, monthly_salary
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%Java%' ;

 16. Вывести зарплаты Python разработчиков
 
select role_title, monthly_salary
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%Python%' ;
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 
 
 20. Вывести зарплаты Junior QA инженеров
 
select role_title, monthly_salary
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%Junior%QA%' ;
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
select avg(monthly_salary)
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%Junior%' ;
 
 22. Вывести сумму зарплат JS разработчиков
 
select sum(monthly_salary)
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%JavaScript%' ;
 
 23. Вывести минимальную ЗП QA инженеров
 
select min(monthly_salary)
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%QA%' ;
 
 24. Вывести максимальную ЗП QA инженеров
 
select max(monthly_salary)
from roles 
join roles_salary
on roles.id = id_role
join salary
on salary.id = id_salary
where role_title like '%QA%' ;
 
 25. Вывести количество QA инженеров
 
 
 
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
