CREATE TABLE Reviews (
    ReviewID SERIAL PRIMARY KEY,
    ProductID INT REFERENCES Products(ProductID),
    UserID INT REFERENCES Users(UserID),
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    Review_Date DATE DEFAULT CURRENT_DATE
);
