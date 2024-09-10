CREATE TABLE Payments (
    PaymentID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    Payment_Method VARCHAR(50),
    Payment_Amount DECIMAL(10,2) NOT NULL,
    Payment_Date DATE DEFAULT CURRENT_DATE,
    Payment_Status VARCHAR(50)
);
