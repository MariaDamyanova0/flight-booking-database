
USE FlightBooking;
GO

DBCC CHECKIDENT ('Airports', RESEED, 0);
DBCC CHECKIDENT ('Users', RESEED, 0);
DBCC CHECKIDENT ('Flights', RESEED, 0);
DBCC CHECKIDENT ('Reservations', RESEED, 0);
DBCC CHECKIDENT ('Payments', RESEED, 0);


-- Airports 
INSERT INTO Airports (name, city, country, iata_code)
VALUES 
('Letishte Sofia', 'Sofia', 'Bulgaria', 'SOF'),
('Heathrow Airport', 'London', 'UK', 'LHR'),
('Charles de Gaulle', 'Paris', 'France', 'CDG');
GO

-- Users 
INSERT INTO Users (name, email, password)
VALUES 
('Maria Damyanova', 'maria@example.com', 'maria123'),
('Ivan Petrov', 'ivan@example.com', 'ivan123');
GO

-- Flights
INSERT INTO Flights (departure_time, arrival_time, origin_id, destination_id)
VALUES 
('2025-06-01 09:00:00', '2025-06-01 11:30:00', 1, 2),
('2025-06-05 14:00:00', '2025-06-05 16:45:00', 2, 3);
GO

-- Reservations
INSERT INTO Reservations (user_id, flight_id, reservation_date)
VALUES 
(1, 1, '2025-05-26'),
(2, 2, '2025-05-27');
GO

-- Payments
INSERT INTO Payments (reservation_id, amount, payment_date)
VALUES 
(1, 299.99, '2025-05-26'),
(2, 179.50, '2025-05-27');
GO
