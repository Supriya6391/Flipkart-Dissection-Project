SQL commands to create the tables and establish relationships based on your schema for the "Product Dissection of Flipkart" project.

1. User Table
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Full_Name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Address TEXT,
    Phone_Number VARCHAR(20),
    Registration_Date DATE DEFAULT CURRENT_DATE
);




2. Seller Table

CREATE TABLE Sellers (
    SellerID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Store_Name VARCHAR(255) NOT NULL,
    Rating DECIMAL(2,1)
);



3. Product Table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Category VARCHAR(255),
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    SellerID INT REFERENCES Sellers(SellerID)
);




4. Order Table

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Order_Date DATE DEFAULT CURRENT_DATE,
    Total_Amount DECIMAL(10,2) NOT NULL,
    Shipping_Address TEXT,
    Order_Status VARCHAR(50) NOT NULL
);




5. OrderItems Table

CREATE TABLE OrderItems (
    OrderItemID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);




6. Reviews Table
CREATE TABLE Reviews (
    ReviewID SERIAL PRIMARY KEY,
    ProductID INT REFERENCES Products(ProductID),
    UserID INT REFERENCES Users(UserID),
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    Review_Date DATE DEFAULT CURRENT_DATE
);



7. Payment Table

CREATE TABLE Payments (
    PaymentID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    Payment_Method VARCHAR(50),
    Payment_Amount DECIMAL(10,2) NOT NULL,
    Payment_Date DATE DEFAULT CURRENT_DATE,
    Payment_Status VARCHAR(50)
);



8. Wishlist Table

CREATE TABLE Wishlists (
    WishlistID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    ProductID INT REFERENCES Products(ProductID),
    Date_Added DATE DEFAULT CURRENT_DATE
);


Relationships:

User to Orders:                Orders references Users via UserID.
Orders to OrderItems:          OrderItems references Orders via OrderID.
OrderItems to Products:        OrderItems references Products via ProductID.
Users to Reviews:              Reviews references Users via UserID.
Products to Reviews:           Reviews references Products via ProductID.
Users to Wishlists:            Wishlists references Users via UserID.
Products to Wishlists:         Wishlists references Products via ProductID.
Sellers to Products:           Products references Sellers via SellerID.









