use session_4;

create database employee_management;

use employee_management;

CREATE TABLE Employee (
    employee_id CHAR(4) PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    sex BIT NOT NULL CHECK (sex IN (0, 1)),
    base_salary INT NOT NULL CHECK (base_salary > 0),
    phone_number CHAR(11) NOT NULL UNIQUE,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department(department_id) ON DELETE CASCADE
);

INSERT INTO employees (employee_id, employee_name, dateOfBirth, sex, base_salary, phone_number)
VALUES
    ('E001', 'Nguyễn Minh Nhật', '2004-12-11', 1, 4000000, '0987836473'),
    ('E002', 'Đồ Đức Long', '2004-01-12', 1, 3500000, '0982378673'),
    ('E003', 'Mai Tiến Linh', '2004-02-03', 1, 3500000, '0976734562'),
    ('E004', 'Nguyễn Ngọc Ánh', '2004-10-04', 0, 5000000, '0987352772'),
    ('E005', 'Phạm Minh Sơn', '2003-03-12', 1, 4000000, '0987236568'),
    ('E006', 'Nguyễn Ngọc Minh', '2003-11-11', 0, 5000000, '0928864736');
    
select employee_id, employee_name, dateOfBirth, phone_number from employees;

update employees
set base_salary = base_salary * 1.1
where sex = 0;

delete from employees
where year(dateOfBirth) = 2003;

-- Bài 6
create table department(
	department_id int primary key auto_increment,
    department_name varchar(50) not null unique,
    address varchar(50) not null
);

-- Thêm 5 phòng ban
INSERT INTO department (department_name, address) VALUES
('Kế Toán', 'Hà Nội'),
('Nhân Sự', 'TP Hồ Chí Minh'),
('Công Nghệ Thông Tin', 'Đà Nẵng'),
('Marketing', 'Hải Phòng'),
('Kinh Doanh', 'Cần Thơ');

-- Thêm 10 nhân viên
insert into Employee(employee_id, employee_name, date_of_birth, sex, base_salary, phone_number, department_id) VALUES
('E001', 'Nguyễn Văn A', '1990-05-15', 1, 12000000, '0987654321', 1),
('E002', 'Trần Thị B', '1995-08-20', 0, 10000000, '0987654322', 2),
('E003', 'Lê Văn C', '1988-11-10', 1, 15000000, '0987654323', 3),
('E004', 'Phạm Thị D', '1992-07-25', 0, 11000000, '0987654324', 4),
('E005', 'Hoàng Văn E', '1997-09-30', 1, 9500000, '0987654325', 5),
('E006', 'Đặng Thị F', '1993-03-12', 0, 13000000, '0987654326', 1),
('E007', 'Vũ Văn G', '1991-06-22', 1, 12500000, '0987654327', 2),
('E008', 'Ngô Thị H', '1998-04-18', 0, 10500000, '0987654328', 3),
('E009', 'Bùi Văn I', '1986-12-05', 1, 14500000, '0987654329', 4),
('E010', 'Dương Thị J', '1994-02-28', 0, 10200000, '0987654330', 5);

delete from Department where department_id = 1;

update department
set department_name = 'Tài chính'
where department_id = 1;

select * from employee;
select * from department;
