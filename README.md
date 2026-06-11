<img width="1440" height="1770" alt="image" src="https://github.com/user-attachments/assets/bb73df93-f784-40dc-8508-a0efbd66e568" />

# Airline Management System Database

## Overview

The Airline Management System is a relational database project designed to manage airline operations efficiently. The system stores and manages information related to airlines, aircrafts, airports, flights, passengers, bookings, payments, baggage, crew members, and flight schedules.

This project demonstrates database design principles, normalization techniques, primary and foreign key relationships, SQL operations, and complex query execution using MySQL.

The database is designed to simulate real-world airline booking and management systems used by commercial airlines and travel platforms.

---

## Objectives

* Manage airline and aircraft information.
* Store airport and route details.
* Schedule flights and flight instances.
* Maintain passenger records.
* Process bookings and payments.
* Track baggage information.
* Manage crew assignments.
* Generate reports using SQL queries.
* Demonstrate database normalization and relational modeling.

---

## Database Design

The system follows a relational database architecture where entities are connected using primary keys and foreign keys.

### Main Entities

#### Airlines

Stores information about airline companies.

Attributes:

* airline_id (Primary Key)
* airline_name
* airline_code

#### Aircrafts

Stores aircraft information owned by airlines.

Attributes:

* aircraft_id (Primary Key)
* airline_id (Foreign Key)
* model
* registration_number
* total_seats
* status

#### Airports

Stores airport details.

Attributes:

* airport_id (Primary Key)
* airport_name
* city
* country
* airport_code

#### Flights

Stores flight route information.

Attributes:

* flight_id (Primary Key)
* flight_number
* airline_id (Foreign Key)
* source_airport_id (Foreign Key)
* destination_airport_id (Foreign Key)

#### Flight Instances

Stores daily flight schedules.

Attributes:

* flight_instance_id (Primary Key)
* flight_id (Foreign Key)
* departure_time
* arrival_time
* flight_status

#### Passengers

Stores passenger information.

Attributes:

* passenger_id (Primary Key)
* first_name
* last_name
* email
* phone_number

#### Bookings

Stores booking records.

Attributes:

* booking_id (Primary Key)
* passenger_id
* flight_instance_id
* booking_date
* booking_status

#### Booking Passengers

Acts as a junction table for handling multiple passengers under a single booking.

Attributes:

* booking_passenger_id (Primary Key)
* booking_id (Foreign Key)
* passenger_id (Foreign Key)

#### Payments

Stores payment information.

Attributes:

* payment_id (Primary Key)
* booking_id (Foreign Key)
* amount
* payment_method
* payment_status

#### Baggage

Stores baggage details associated with passengers.

Attributes:

* baggage_id (Primary Key)
* passenger_id (Foreign Key)
* weight
* baggage_type

#### Crew Members

Stores pilot and cabin crew information.

Attributes:

* crew_id (Primary Key)
* first_name
* last_name
* role

---

## Database Relationships

* One Airline can own multiple Aircrafts.
* One Airline can operate multiple Flights.
* One Flight has one Source Airport and one Destination Airport.
* One Flight can have multiple Flight Instances.
* One Booking can contain multiple Passengers.
* One Passenger can be associated with multiple Bookings.
* One Booking can have one or more Payments.
* One Passenger can have multiple Baggage records.

---

## SQL Concepts Demonstrated

### DDL (Data Definition Language)

* CREATE DATABASE
* CREATE TABLE
* ALTER TABLE
* DROP TABLE

### DML (Data Manipulation Language)

* INSERT
* UPDATE
* DELETE

### Query Operations

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* DISTINCT

### Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* SELF JOIN

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### Constraints

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* AUTO_INCREMENT

---

## Normalization

The database follows normalization principles to reduce redundancy and improve consistency.

### First Normal Form (1NF)

* Eliminates repeating groups.
* Stores atomic values only.

### Second Normal Form (2NF)

* Removes partial dependencies.
* Ensures non-key attributes depend on the entire primary key.

### Third Normal Form (3NF)

* Removes transitive dependencies.
* Ensures attributes depend only on the primary key.

Benefits:

* Reduced data duplication.
* Improved data consistency.
* Easier maintenance.
* Better scalability.

---

## Sample Query

Retrieve booking details along with passenger name, flight number, source city, destination city, and departure time.

```sql
SELECT
    b.booking_id,
    p.first_name,
    f.flight_number,
    a1.city AS source_city,
    a2.city AS destination_city,
    fi.departure_time
FROM bookings b
JOIN booking_passengers bp
    ON b.booking_id = bp.booking_id
JOIN passengers p
    ON bp.passenger_id = p.passenger_id
JOIN flight_instances fi
    ON b.flight_instance_id = fi.flight_instance_id
JOIN flights f
    ON fi.flight_id = f.flight_id
JOIN airports a1
    ON f.source_airport_id = a1.airport_id
JOIN airports a2
    ON f.destination_airport_id = a2.airport_id;
```

---

## Learning Outcomes

Through this project, the following concepts were explored:

* Relational Database Design
* Entity Relationship Modeling
* Database Normalization
* SQL Query Optimization
* Data Integrity Management
* Foreign Key Relationships
* Real-world Airline System Modeling
* Complex Join Operations
* Aggregate Functions and Reporting

---

## Future Enhancements

* Online Flight Search System
* Seat Selection Module
* Dynamic Fare Management
* Real-Time Flight Tracking
* Crew Scheduling System
* Passenger Check-in System
* Ticket Generation Module
* Admin Dashboard
* Analytics and Reporting Dashboard

---

## Technologies Used

* MySQL
* SQL
* Relational Database Design
* ER Modeling



