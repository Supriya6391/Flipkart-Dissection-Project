CREATE TABLE Wishlists (
    WishlistID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    ProductID INT REFERENCES Products(ProductID),
    Date_Added DATE DEFAULT CURRENT_DATE
);
