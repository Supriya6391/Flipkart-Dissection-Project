CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Order_Date DATE DEFAULT CURRENT_DATE,
    Total_Amount DECIMAL(10,2) NOT NULL,
    Shipping_Address TEXT,
    Order_Status VARCHAR(50) NOT NULL
);
