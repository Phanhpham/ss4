use Thuchanh;

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    sex BIT NOT NULL,
    job VARCHAR(50) NOT NULL,
    phone_number CHAR(11) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL
);

INSERT INTO Customer (customer_name, birthday, sex, job, phone_number, email, address)
VALUES
('Nguyen Van A', '2000-05-10', 1, 'Engineer', '0912345678', 'a@gmail.com', 'Hanoi'),
('Tran Thi B', '1995-03-22', 0, 'Teacher', '0912345679', 'b@gmail.com', 'HCMC'),
('Le Van C', '1988-07-15', 1, 'Doctor', '0912345680', 'c@gmail.com', 'Danang'),
('Pham Thi D', '2002-11-01', 0, 'Student', '0912345681', 'd@gmail.com', 'Hue'),
('Hoang Van E', '1999-09-12', 1, 'Designer', '0912345682', 'e@gmail.com', 'Hanoi'),
('Nguyen Thi F', '2001-02-28', 0, 'Nurse', '0912345683', 'f@gmail.com', 'Can Tho'),
('Do Van G', '1997-04-16', 1, 'Accountant', '0912345684', 'g@gmail.com', 'HCMC'),
('Vo Thi H', '1990-01-05', 0, 'Lawyer', '0912345685', 'h@gmail.com', 'Hai Phong'),
('Bui Van I', '1995-06-30', 1, 'IT Specialist', '0912345686', 'i@gmail.com', 'Quang Ninh'),
('Nguyen Thi J', '2003-08-18', 0, 'Freelancer', '0912345687', 'j@gmail.com', 'Nha Trang');


-- cap nhat
UPDATE Customer
SET customer_name = 'Nguyen Quang Nhat', birthday = '2004-01-11'
WHERE customer_id = 1;

-- xoa
DELETE FROM Customer
WHERE MONTH(birthday) = 8;

-- lay thong tin khach hang
SELECT customer_id, customer_name, birthday, 
       CASE WHEN sex = 1 THEN 'Nam' ELSE 'Nu' END AS gender, 
       phone_number
FROM Customer
WHERE birthday > '2000-01-11';

-- truy vấn 
SELECT * 
FROM Customer
WHERE job IS NULL;


