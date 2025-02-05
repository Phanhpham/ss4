use Thuchanh;

CREATE TABLE Supplier (
    SupplierID VARCHAR(10) PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL
);

CREATE TABLE Material (
    MaterialID VARCHAR(10) PRIMARY KEY,
    MaterialName VARCHAR(100) NOT NULL
);

CREATE TABLE SupplierAddress (
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID VARCHAR(10),
    Address VARCHAR(255) NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE CASCADE
);

CREATE TABLE Purchase (
    PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID VARCHAR(10),
    MaterialID VARCHAR(10),
    AddressID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    PurchaseDate DATE NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE CASCADE,
    FOREIGN KEY (MaterialID) REFERENCES Material(MaterialID) ON DELETE CASCADE,
    FOREIGN KEY (AddressID) REFERENCES SupplierAddress(AddressID) ON DELETE CASCADE
);
