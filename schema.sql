-- Data Engineering
-- Creating tables from ERD Diagram
-- Import CSV Files into SQL Table

CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Employees(
	emp_no INT NOT NULL,
	title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (title_id) references titles(title_id),
	PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) references Employees(emp_no),
);

CREATE TABLE Departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)	  
);

CREATE TABLE Dept_Manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) references Employees (emp_no),
	FOREIGN KEY (dept_no) references Departments (dept_no),
);

CREATE TABLE Dept_Employees(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) references Departments (dept_no),
	FOREIGN KEY (emp_no) references Employees (emp_no),
);