Create table Titles (
	title_id VARCHAR(10) Primary Key,
	title VARCHAR(50) not null
);

Create table Employees (
	emp_no INT Primary Key,
	emp_title_id VARCHAR(10) not null,
	birth_date VARCHAR(20),
	first_name VARCHAR(20) not null,
	last_name VARCHAR(20) not null,
	sex VARCHAR(20),
	hire_date VARCHAR(20),
	foreign key (emp_title_id) references Titles(title_id)
);

Create table Departments(
	dept_no VARCHAR(10) Primary Key,
	dept_name VARCHAR(50) not null
);

Create table Department_Employee(
	emp_no INT not null,
	dept_no VARCHAR(10) not null,
	foreign key (emp_no) references Employees(emp_no),
	foreign key (dept_no) references Departments(dept_no)
);

Create table Department_Manager(
	dept_no VARCHAR(10) not null,
	emp_no INT not null,
	foreign key (dept_no) references Departments(dept_no),
	foreign key (emp_no) references Employees(emp_no)
);

Create Table Salaries (
	id serial primary key,
	emp_no int not null,
	salary int not null,
	foreign key(emp_no) references Employees(emp_no)
);
