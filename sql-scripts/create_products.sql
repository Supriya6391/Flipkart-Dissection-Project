CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Category VARCHAR(255),
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    SellerID INT REFERENCES Sellers(SellerID)
);
