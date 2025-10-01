
CREATE DATABASE FlightBooking;
GO

USE FlightBooking;
GO

CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Airports (
    airport_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    iata_code VARCHAR(10) NOT NULL UNIQUE
);
GO

CREATE TABLE Flights (
    flight_id INT IDENTITY(1,1) PRIMARY KEY,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    origin_id INT,
    destination_id INT
);
GO

CREATE TABLE Reservations (
    reservation_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    flight_id INT NOT NULL,
    reservation_date DATETIME NOT NULL
);
GO

CREATE TABLE Payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    reservation_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME NOT NULL
);
GO

ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_Users
FOREIGN KEY (user_id) REFERENCES Users(user_id);
GO

ALTER TABLE Reservations
ADD CONSTRAINT FK_Reservations_Flights
FOREIGN KEY (flight_id) REFERENCES Flights(flight_id);
GO

ALTER TABLE Payments
ADD CONSTRAINT FK_Payments_Reservations
FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id);
GO

ALTER TABLE Flights
ADD CONSTRAINT FK_Flights_Origin
FOREIGN KEY (origin_id) REFERENCES Airports(airport_id);
GO

ALTER TABLE Flights
ADD CONSTRAINT FK_Flights_Destination
FOREIGN KEY (destination_id) REFERENCES Airports(airport_id);
GO
