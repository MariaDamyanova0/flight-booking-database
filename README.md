# Flight Booking Database System

## Overview

This project demonstrates the design and implementation of a relational database for a flight booking system.

The database models the core components of an airline reservation platform, including flights, passengers, and booking records. The goal of the project was to design a structured relational database and practice SQL querying, normalization, and data relationships within a realistic reservation system.

---

## Features

- Relational database schema
- Multiple interconnected tables
- Data integrity using **primary and foreign keys**
- SQL queries for managing flights and reservations
- Structured relationships between passengers, flights, and bookings

---

## Database Structure

The system models a simplified airline reservation platform including:

- **Passengers**
- **Flights**
- **Bookings**
- **Airports / Routes**
- **Flight schedules**

These entities are connected through relational keys to maintain data integrity and ensure reliable relationships between records.

---

## SQL Files

The repository includes the following SQL files:

**FlightBooking_Structure.sql**

Contains the full database schema including tables, relationships, and constraints.

**FlightBooking_Insert_Examples.sql**

Contains example insert statements used to populate the database with sample data.

<img width="865" height="592" alt="image" src="https://github.com/user-attachments/assets/c66d11a3-8f29-4901-8953-dd0e4d30b163" />


Example query:

```sql
SELECT passenger_name, flight_number
FROM bookings
JOIN passengers ON bookings.passenger_id = passengers.id;




