CREATE TABLE Sellers (
    SellerID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Store_Name VARCHAR(255) NOT NULL,
    Rating DECIMAL(2,1)
);
