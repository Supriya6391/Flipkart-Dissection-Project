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
