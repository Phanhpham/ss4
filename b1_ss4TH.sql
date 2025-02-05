create database Thuchanh;

use Thuchanh;

CREATE TABLE Room (
    RoomID VARCHAR(10) PRIMARY KEY,
    RoomName VARCHAR(100) NOT NULL,
    ManagerName VARCHAR(100) NOT NULL
);


CREATE TABLE Computer (
    ComputerID VARCHAR(10) PRIMARY KEY,
    CPU VARCHAR(50) NOT NULL,
    RAM INT NOT NULL,
    HardDrive INT NOT NULL, 
    RoomID VARCHAR(10),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID) ON DELETE CASCADE
);

CREATE TABLE Course (
    CourseID VARCHAR(10) PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Duration INT NOT NULL
);

CREATE TABLE Registration (
    RoomID VARCHAR(10),
    CourseID VARCHAR(10),
    RegistrationDate DATE NOT NULL,
    PRIMARY KEY (RoomID, CourseID, RegistrationDate),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE
);
