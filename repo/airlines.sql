CREATE TABLE airports (
     airport_id BIGINT PRIMARY KEY AUTO_INCREMENT,
     airport_code VARCHAR(10) UNIQUE NOT NULL,
       airport_name VARCHAR(150) NOT NULL,
       city VARCHAR(100) NOT NULL,
        country VARCHAR(100) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
     );

     INSERT INTO airports (airport_code, airport_name, city, country)
    -> VALUES
    -> ('DEL', 'Indira Gandhi International Airport', 'New Delhi', 'India'),
    -> ('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
    -> ('BLR', 'Kempegowda International Airport', 'Bengaluru', 'India'),
    -> ('MAA', 'Chennai International Airport', 'Chennai', 'India'),
    -> ('HYD', 'Rajiv Gandhi International Airport', 'Hyderabad', 'India'),
    -> ('CCU', 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India'),
    -> ('GOI', 'Manohar International Airport', 'Goa', 'India'),
    -> ('NAG', 'Dr. Babasaheb Ambedkar International Airport', 'Nagpur', 'India'),
    -> ('PNQ', 'Pune International Airport', 'Pune', 'India'),
    -> ('AMD', 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad', 'India'),
    ->
    -> ('JFK', 'John F. Kennedy International Airport', 'New York', 'USA'),
    -> ('LAX', 'Los Angeles International Airport', 'Los Angeles', 'USA'),
    -> ('LHR', 'Heathrow Airport', 'London', 'United Kingdom'),
    -> ('CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
    -> ('DXB', 'Dubai International Airport', 'Dubai', 'United Arab Emirates'),
    -> ('SIN', 'Singapore Changi Airport', 'Singapore', 'Singapore'),
    -> ('HND', 'Haneda Airport', 'Tokyo', 'Japan'),
    -> ('SYD', 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
    -> ('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
    -> ('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),);

mysql> INSERT INTO airports (airport_code, airport_name, city, country)
    -> VALUES
    -> ('DEL', 'Indira Gandhi International Airport', 'New Delhi', 'India'),
    -> ('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
    -> ('BLR', 'Kempegowda International Airport', 'Bengaluru', 'India'),
    -> ('MAA', 'Chennai International Airport', 'Chennai', 'India'),
    -> ('HYD', 'Rajiv Gandhi International Airport', 'Hyderabad', 'India'),
    -> ('CCU', 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'India'),
    -> ('GOI', 'Manohar International Airport', 'Goa', 'India'),
    -> ('NAG', 'Dr. Babasaheb Ambedkar International Airport', 'Nagpur', 'India'),
    -> ('PNQ', 'Pune International Airport', 'Pune', 'India'),
    -> ('AMD', 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad', 'India'),
    ->
    -> ('JFK', 'John F. Kennedy International Airport', 'New York', 'USA'),
    -> ('LAX', 'Los Angeles International Airport', 'Los Angeles', 'USA'),
    -> ('LHR', 'Heathrow Airport', 'London', 'United Kingdom'),
    -> ('CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
    -> ('DXB', 'Dubai International Airport', 'Dubai', 'United Arab Emirates'),
    -> ('SIN', 'Singapore Changi Airport', 'Singapore', 'Singapore'),
    -> ('HND', 'Haneda Airport', 'Tokyo', 'Japan'),
    -> ('SYD', 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
    -> ('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
    -> ('YYZ', 'Toronto Pearson International Airport', 'Toronto', 'Canada');

     create table airlines(airline_id bigint primary key auto_increment, airline_name varchar(50) not null, airline_code varchar(20) unique not null);

    INSERT INTO airlines VALUES (1, 'Air India', 'AI1914');
      insert into airlines values(('IndiGo', '6E'),
    -> ('SpiceJet', 'SG'),
    -> ('Akasa Air', 'QP'),
    -> ('Alliance Air', '9I'),
    -> ('Vistara', 'UK'),
    -> ('AirAsia India', 'I5'),
    -> ('Emirates', 'EK'),
    -> ('Qatar Airways', 'QR'),
    -> ('Singapore Airlines', 'SQ'),
    -> ('Lufthansa', 'LH'),
    -> ('British Airways', 'BA'),
    -> ('Etihad Airways', 'EY'),
    -> ('Turkish Airlines', 'TK'),
    -> ('Cathay Pacific', 'CX');

     CREATE TABLE aircrafts (
    ->     aircraft_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    ->
    ->     airline_id BIGINT NOT NULL,
    ->
    ->     model VARCHAR(100) NOT NULL,
    ->
    ->     registration_number VARCHAR(50) UNIQUE,
    ->
    ->     total_seats INT NOT NULL,
    ->
    ->     status ENUM(
    ->         'ACTIVE',
    ->         'MAINTENANCE',
    ->         'RETIRED'
    ->     ) DEFAULT 'ACTIVE',
    ->
    ->     FOREIGN KEY (airline_id)
    ->         REFERENCES airlines(airline_id)
    -> );

    
mysql> INSERT INTO aircrafts (airline_id, model, registration_number, total_seats, status)
    -> VALUES
    -> -- Air India
    -> (1, 'Boeing 787-8 Dreamliner', 'AI-101', 256, 'ACTIVE'),
    -> (1, 'Airbus A320neo', 'AI-102', 180, 'ACTIVE'),
    ->
    -> -- IndiGo
    -> (2, 'Airbus A320neo', '6E-201', 180, 'ACTIVE'),
    -> (2, 'Airbus A321neo', '6E-202', 220, 'ACTIVE'),
    -> (2, 'ATR 72-600', '6E-203', 72, 'MAINTENANCE'),
    ->
    -> -- SpiceJet
    -> (3, 'Boeing 737-800', 'SG-301', 189, 'ACTIVE'),
    -> (3, 'Boeing 737 MAX 8', 'SG-302', 210, 'ACTIVE'),
    ->
    -> -- Akasa Air
    -> (4, 'Boeing 737 MAX 8', 'QP-401', 189, 'ACTIVE'),
    -> (4, 'Boeing 737 MAX 8', 'QP-402', 189, 'ACTIVE'),
    ->
    -> -- Alliance Air
    -> (5, 'ATR 72-600', '9I-501', 72, 'ACTIVE'),
    -> (5, 'ATR 42-600', '9I-502', 48, 'RETIRED'),
    ->
    -> -- Vistara
    -> (6, 'Airbus A320neo', 'UK-601', 180, 'ACTIVE'),
    -> (6, 'Boeing 787-9 Dreamliner', 'UK-602', 298, 'ACTIVE'),
    ->
    -> -- AirAsia India
    -> (7, 'Airbus A320neo', 'I5-701', 180, 'ACTIVE'),
    -> (7, 'Airbus A320', 'I5-702', 180, 'MAINTENANCE'),
    ->
    -> -- Emirates
    -> (8, 'Airbus A380-800', 'EK-801', 517, 'ACTIVE'),
    -> (8, 'Boeing 777-300ER', 'EK-802', 396, 'ACTIVE'),
    ->
    -> -- Qatar Airways
    -> (9, 'Airbus A350-900', 'QR-901', 325, 'ACTIVE'),
    -> (9, 'Boeing 787-9', 'QR-902', 290, 'ACTIVE'),
    ->
    -> -- Singapore Airlines
    -> (10, 'Airbus A350-900', 'SQ-1001', 303, 'ACTIVE'),
    -> (10, 'Boeing 777-300ER', 'SQ-1002', 338, 'ACTIVE'),
    ->
    -> -- Lufthansa
    -> (11, 'Airbus A320neo', 'LH-1101', 180, 'ACTIVE'),
    -> (11, 'Boeing 747-8', 'LH-1102', 467, 'ACTIVE'),
    ->
    -> -- British Airways
    -> (12, 'Airbus A350-1000', 'BA-1201', 331, 'ACTIVE'),
    -> (12, 'Boeing 777-200', 'BA-1202', 312, 'MAINTENANCE'),
    ->
    -> -- Etihad Airways
    -> (13, 'Boeing 787-10', 'EY-1301', 336, 'ACTIVE'),
    -> (13, 'Airbus A380-800', 'EY-1302', 496, 'ACTIVE'),
    ->
    -> -- Turkish Airlines
    -> (14, 'Boeing 737 MAX 9', 'TK-1401', 220, 'ACTIVE'),
    -> (14, 'Airbus A330-300', 'TK-1402', 277, 'ACTIVE'),
    ->
    -> -- Cathay Pacific
    -> (15, 'Airbus A350-1000', 'CX-1501', 334, 'ACTIVE'),
    -> (15, 'Boeing 777-300ER', 'CX-1502', 360, 'RETIRED');

    CREATE TABLE flights (
    ->     flight_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    ->
    ->     airline_id BIGINT NOT NULL,
    ->
    ->     flight_number VARCHAR(20) UNIQUE NOT NULL,
    ->
    ->     source_airport_id BIGINT NOT NULL,
    ->     destination_airport_id BIGINT NOT NULL,
    ->
    ->     FOREIGN KEY (airline_id)
    ->         REFERENCES airlines(airline_id),
    ->
    ->     FOREIGN KEY (source_airport_id)
    ->         REFERENCES airports(airport_id),
    ->
    ->     FOREIGN KEY (destination_airport_id)
    ->         REFERENCES airports(airport_id)
    -> );

    INSERT INTO flights (airline_id, flight_number, source_airport_id, destination_airport_id)
    -> VALUES
    ->
    -> -- IndiGo domestic (India)
    -> (2, '6E101', 1, 2),
    -> (2, '6E102', 2, 3),
    -> (2, '6E103', 3, 4),
    -> (2, '6E104', 4, 5),
    -> (2, '6E105', 5, 1),
    ->
    -> -- Air India domestic
    -> (1, 'AI201', 1, 3),
    -> (1, 'AI202', 2, 4),
    -> (1, 'AI203', 3, 5),
    -> (1, 'AI204', 4, 6),
    -> (1, 'AI205', 6, 1),
    ->
    -> -- SpiceJet domestic
    -> (3, 'SG301', 2, 5),
    -> (3, 'SG302', 5, 8),
    -> (3, 'SG303', 8, 9),
    -> (3, 'SG304', 9, 10),
    -> (3, 'SG305', 10, 2),
    ->
    -> -- Vistara domestic
    -> (6, 'UK401', 1, 6),
    -> (6, 'UK402', 6, 2),
    -> (6, 'UK403', 2, 7),
    -> (6, 'UK404', 7, 3),
    -> (6, 'UK405', 3, 1),
    ->
    -> -- International flights
    -> (8, 'EK501', 1, 15),   -- DEL → DXB
    -> (8, 'EK502', 2, 15),   -- BOM → DXB
    ->
    -> (9, 'QR601', 1, 15),   -- DEL → DXB (via Qatar hub concept)
    -> (9, 'QR602', 2, 11),   -- BOM → JFK
    ->
    -> (10, 'SQ701', 3, 16),  -- BLR → Singapore
    -> (10, 'SQ702', 2, 16),  -- BOM → Singapore
    ->
    -> (11, 'LH801', 1, 19),  -- DEL → Frankfurt
    -> (11, 'LH802', 2, 19),  -- BOM → Frankfurt
    ->
    -> (12, 'BA901', 2, 13),  -- BOM → London
    -> (12, 'BA902', 1, 13),  -- DEL → London
    ->
    -> (15, 'CX1001', 3, 20); -- BLR → Toronto

    ------operations 

     alter table flights add flight_company varchar(200);  --add new coloum in flight table
      update flights set flight_company='vistara' where flight_id=2;   --update row date 
     
     UPDATE flights     --update multiplale row data
         SET flight_company = 'SpiceJet',
         source_airport_id = 101,
         destination_airport_id = 205
         WHERE flight_id = 3;
      
      alter table flights drop column flight_company;  --delete flight company column 

      ALTER TABLE flights   --reanme existing column
        RENAME COLUMN flight_company TO airline_name;


        ------
        CREATE TABLE flight_instances (

    flight_instance_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    flight_id BIGINT NOT NULL,

    aircraft_id BIGINT NOT NULL,

    departure_time DATETIME NOT NULL,

    arrival_time DATETIME NOT NULL,

    status ENUM(
        'SCHEDULED',
        'BOARDING',
        'DEPARTED',
        'ARRIVED',
        'CANCELLED',
        'DELAYED'
    ) DEFAULT 'SCHEDULED',

    FOREIGN KEY (flight_id)
        REFERENCES flights(flight_id),

    FOREIGN KEY (aircraft_id)
        REFERENCES aircrafts(aircraft_id)
);

INSERT INTO flight_instances
(flight_id, aircraft_id, departure_time, arrival_time, status)
VALUES

-- Day 1 schedules
(1, 1, '2026-06-11 06:00:00', '2026-06-11 08:00:00', 'SCHEDULED'),
(2, 2, '2026-06-11 07:00:00', '2026-06-11 09:10:00', 'BOARDING'),
(3, 3, '2026-06-11 08:00:00', '2026-06-11 10:00:00', 'DEPARTED'),
(4, 4, '2026-06-11 09:00:00', '2026-06-11 11:00:00', 'ARRIVED'),
(5, 5, '2026-06-11 10:00:00', '2026-06-11 12:00:00', 'SCHEDULED'),

-- Domestic flights batch
(6, 6, '2026-06-11 11:00:00', '2026-06-11 13:30:00', 'SCHEDULED'),
(7, 7, '2026-06-11 12:00:00', '2026-06-11 14:30:00', 'DELAYED'),
(8, 8, '2026-06-11 13:00:00', '2026-06-11 15:00:00', 'SCHEDULED'),
(9, 9, '2026-06-11 14:00:00', '2026-06-11 16:30:00', 'BOARDING'),
(10, 10, '2026-06-11 15:00:00', '2026-06-11 17:00:00', 'SCHEDULED'),

-- More domestic
(11, 11, '2026-06-11 16:00:00', '2026-06-11 18:00:00', 'SCHEDULED'),
(12, 12, '2026-06-11 17:00:00', '2026-06-11 19:00:00', 'CANCELLED'),
(13, 13, '2026-06-11 18:00:00', '2026-06-11 20:00:00', 'SCHEDULED'),
(14, 14, '2026-06-11 19:00:00', '2026-06-11 21:00:00', 'DEPARTED'),
(15, 15, '2026-06-11 20:00:00', '2026-06-11 22:00:00', 'ARRIVED'),

-- International batch
(16, 16, '2026-06-11 21:00:00', '2026-06-12 01:00:00', 'SCHEDULED'),
(17, 17, '2026-06-11 22:00:00', '2026-06-12 02:30:00', 'SCHEDULED'),
(18, 18, '2026-06-11 23:00:00', '2026-06-12 03:00:00', 'BOARDING'),
(19, 19, '2026-06-12 00:00:00', '2026-06-12 04:30:00', 'SCHEDULED'),
(20, 20, '2026-06-12 01:00:00', '2026-06-12 05:00:00', 'SCHEDULED'),

-- Mid batch
(21, 21, '2026-06-12 02:00:00', '2026-06-12 06:00:00', 'DELAYED'),
(22, 22, '2026-06-12 03:00:00', '2026-06-12 07:00:00', 'SCHEDULED'),
(23, 23, '2026-06-12 04:00:00', '2026-06-12 08:00:00', 'SCHEDULED'),
(24, 24, '2026-06-12 05:00:00', '2026-06-12 09:00:00', 'BOARDING'),
(25, 25, '2026-06-12 06:00:00', '2026-06-12 10:00:00', 'SCHEDULED'),

-- Long haul flights
(26, 26, '2026-06-12 07:00:00', '2026-06-12 13:00:00', 'SCHEDULED'),
(27, 27, '2026-06-12 08:00:00', '2026-06-12 14:00:00', 'DEPARTED'),
(28, 28, '2026-06-12 09:00:00', '2026-06-12 15:00:00', 'ARRIVED'),
(29, 29, '2026-06-12 10:00:00', '2026-06-12 16:00:00', 'SCHEDULED'),
(30, 30, '2026-06-12 11:00:00', '2026-06-12 17:00:00', 'SCHEDULED'),

-- Extra variations (to make 40 total)
(1, 2, '2026-06-12 12:00:00', '2026-06-12 14:00:00', 'SCHEDULED'),
(2, 3, '2026-06-12 13:00:00', '2026-06-12 15:00:00', 'SCHEDULED'),
(3, 4, '2026-06-12 14:00:00', '2026-06-12 16:00:00', 'DELAYED'),
(4, 5, '2026-06-12 15:00:00', '2026-06-12 17:00:00', 'SCHEDULED'),
(5, 6, '2026-06-12 16:00:00', '2026-06-12 18:00:00', 'CANCELLED'),

(6, 7, '2026-06-12 17:00:00', '2026-06-12 19:00:00', 'SCHEDULED'),
(7, 8, '2026-06-12 18:00:00', '2026-06-12 20:00:00', 'SCHEDULED'),
(8, 9, '2026-06-12 19:00:00', '2026-06-12 21:00:00', 'BOARDING'),
(9, 10,'2026-06-12 20:00:00', '2026-06-12 22:00:00', 'SCHEDULED'),
(10, 11,'2026-06-12 21:00:00', '2026-06-12 23:00:00', 'SCHEDULED');


CREATE TABLE passengers (

    passenger_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    first_name VARCHAR(100),

    last_name VARCHAR(100),

    email VARCHAR(150) UNIQUE,

    phone VARCHAR(20),

    passport_number VARCHAR(50),

    date_of_birth DATE
);

INSERT INTO passengers (first_name, last_name, email, phone, passport_number, date_of_birth)
VALUES
('Aarav', 'Sharma', 'aarav.sharma1@gmail.com', '9876543101', 'P10001IND', '1998-05-12'),
('Vihaan', 'Patel', 'vihaan.patel2@gmail.com', '9876543102', 'P10002IND', '1997-11-22'),
('Aditya', 'Verma', 'aditya.verma3@gmail.com', '9876543103', 'P10003IND', '1996-03-15'),
('Arjun', 'Reddy', 'arjun.reddy4@gmail.com', '9876543104', 'P10004IND', '1999-07-09'),
('Kabir', 'Singh', 'kabir.singh5@gmail.com', '9876543105', 'P10005IND', '1995-01-19'),

('Rohan', 'Mehta', 'rohan.mehta6@gmail.com', '9876543106', 'P10006IND', '1994-09-10'),
('Ishaan', 'Gupta', 'ishaan.gupta7@gmail.com', '9876543107', 'P10007IND', '2000-12-01'),
('Siddharth', 'Nair', 'siddharth.nair8@gmail.com', '9876543108', 'P10008IND', '1993-04-18'),
('Aryan', 'Joshi', 'aryan.joshi9@gmail.com', '9876543109', 'P10009IND', '1998-08-25'),
('Yash', 'Kumar', 'yash.kumar10@gmail.com', '9876543110', 'P10010IND', '1997-06-30'),

('Rahul', 'Shah', 'rahul.shah11@gmail.com', '9876543111', 'P10011IND', '1996-02-14'),
('Manav', 'Desai', 'manav.desai12@gmail.com', '9876543112', 'P10012IND', '1995-10-05'),
('Karan', 'Malhotra', 'karan.malhotra13@gmail.com', '9876543113', 'P10013IND', '1999-01-01'),
('Dev', 'Kapoor', 'dev.kapoor14@gmail.com', '9876543114', 'P10014IND', '1998-03-23'),
('Nikhil', 'Bansal', 'nikhil.bansal15@gmail.com', '9876543115', 'P10015IND', '1997-09-12'),

('Amit', 'Joshi', 'amit.joshi16@gmail.com', '9876543116', 'P10016IND', '1996-06-06'),
('Sahil', 'Agarwal', 'sahil.agarwal17@gmail.com', '9876543117', 'P10017IND', '1994-11-29'),
('Ravi', 'Mishra', 'ravi.mishra18@gmail.com', '9876543118', 'P10018IND', '1993-07-17'),
('Deepak', 'Yadav', 'deepak.yadav19@gmail.com', '9876543119', 'P10019IND', '1992-02-28'),
('Pranav', 'Chopra', 'pranav.chopra20@gmail.com', '9876543120', 'P10020IND', '2001-05-14'),

-- International passengers
('John', 'Smith', 'john.smith21@gmail.com', '9876543121', 'P20001US', '1990-01-11'),
('Michael', 'Brown', 'michael.brown22@gmail.com', '9876543122', 'P20002US', '1988-03-22'),
('David', 'Johnson', 'david.johnson23@gmail.com', '9876543123', 'P20003US', '1992-07-19'),
('Chris', 'Williams', 'chris.williams24@gmail.com', '9876543124', 'P20004US', '1991-12-05'),
('James', 'Taylor', 'james.taylor25@gmail.com', '9876543125', 'P20005US', '1993-06-30'),

('Emma', 'Jones', 'emma.jones26@gmail.com', '9876543126', 'P20006UK', '1995-04-10'),
('Olivia', 'Wilson', 'olivia.wilson27@gmail.com', '9876543127', 'P20007UK', '1996-08-14'),
('Sophia', 'Davis', 'sophia.davis28@gmail.com', '9876543128', 'P20008UK', '1997-09-18'),
('Liam', 'Miller', 'liam.miller29@gmail.com', '9876543129', 'P20009UK', '1994-11-11'),
('Noah', 'Moore', 'noah.moore30@gmail.com', '9876543130', 'P20010UK', '1993-02-02'),

('Lucas', 'Martin', 'lucas.martin31@gmail.com', '9876543131', 'P30001FR', '1992-03-03'),
('Ethan', 'Lee', 'ethan.lee32@gmail.com', '9876543132', 'P30002CA', '1991-04-04'),
('Mason', 'Clark', 'mason.clark33@gmail.com', '9876543133', 'P30003CA', '1990-05-05'),
('Logan', 'Walker', 'logan.walker34@gmail.com', '9876543134', 'P30004AU', '1989-06-06'),
('Jacob', 'Hall', 'jacob.hall35@gmail.com', '9876543135', 'P30005DE', '1998-07-07'),

('Alexander', 'Allen', 'alex.allen36@gmail.com', '9876543136', 'P30006DE', '1997-08-08'),
('Benjamin', 'Young', 'ben.young37@gmail.com', '9876543137', 'P30007FR', '1996-09-09'),
('Daniel', 'King', 'dan.king38@gmail.com', '9876543138', 'P30008JP', '1995-10-10'),
('Matthew', 'Scott', 'matt.scott39@gmail.com', '9876543139', 'P30009JP', '1994-11-11'),
('Henry', 'Green', 'henry.green40@gmail.com', '9876543140', 'P30010SG', '1993-12-12'),

-- More mixed passengers
('Vikram', 'Singh', 'vikram.singh41@gmail.com', '9876543141', 'P10041IND', '1992-01-01'),
('Sameer', 'Khan', 'sameer.khan42@gmail.com', '9876543142', 'P10042IND', '1991-02-02'),
('Imran', 'Ali', 'imran.ali43@gmail.com', '9876543143', 'P10043IND', '1990-03-03'),
('Faizan', 'Shaikh', 'faizan.shaikh44@gmail.com', '9876543144', 'P10044IND', '1989-04-04'),
('Zaid', 'Ansari', 'zaid.ansari45@gmail.com', '9876543145', 'P10045IND', '1988-05-05'),

('Ayesha', 'Khan', 'ayesha.khan46@gmail.com', '9876543146', 'P10046IND', '1995-06-06'),
('Sara', 'Ali', 'sara.ali47@gmail.com', '9876543147', 'P10047IND', '1994-07-07'),
('Zara', 'Sheikh', 'zara.sheikh48@gmail.com', '9876543148', 'P10048IND', '1993-08-08'),
('Neha', 'Rao', 'neha.rao49@gmail.com', '9876543149', 'P10049IND', '1992-09-09'),
('Pooja', 'Iyer', 'pooja.iyer50@gmail.com', '9876543150', 'P10050IND', '1991-10-10'),

-- Final 10
('Ananya', 'Sharma', 'ananya.sharma51@gmail.com', '9876543151', 'P10051IND', '1990-11-11'),
('Meera', 'Patel', 'meera.patel52@gmail.com', '9876543152', 'P10052IND', '1999-12-12'),
('Divya', 'Nair', 'divya.nair53@gmail.com', '9876543153', 'P10053IND', '1998-01-13'),
('Tanya', 'Verma', 'tanya.verma54@gmail.com', '9876543154', 'P10054IND', '1997-02-14'),
('Riya', 'Gupta', 'riya.gupta55@gmail.com', '9876543155', 'P10055IND', '1996-03-15'),

('Emily', 'Clark', 'emily.clark56@gmail.com', '9876543156', 'P20011US', '1995-04-16'),
('Sophia', 'Lewis', 'sophia.lewis57@gmail.com', '9876543157', 'P20012US', '1994-05-17'),
('Isabella', 'Walker', 'isabella.walker58@gmail.com', '9876543158', 'P20013US', '1993-06-18'),
('Mia', 'Hall', 'mia.hall59@gmail.com', '9876543159', 'P20014US', '1992-07-19'),
('Charlotte', 'Allen', 'charlotte.allen60@gmail.com', '9876543160', 'P20015US', '1991-08-20');


CREATE TABLE bookings (

    booking_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    booking_reference VARCHAR(20)
    UNIQUE NOT NULL,

    flight_instance_id BIGINT NOT NULL,

    booking_date DATETIME
    DEFAULT CURRENT_TIMESTAMP,

    booking_status ENUM(
        'CONFIRMED',
        'CANCELLED',
        'PENDING'
    ),

    total_amount DECIMAL(12,2),

    FOREIGN KEY (flight_instance_id)
        REFERENCES flight_instances(
            flight_instance_id
        )
);

INSERT INTO bookings
(booking_reference, flight_instance_id, booking_status, total_amount)
VALUES

('PNR10001', 1, 'CONFIRMED', 4500.00),
('PNR10002', 2, 'CONFIRMED', 5200.00),
('PNR10003', 3, 'PENDING', 6100.00),
('PNR10004', 4, 'CANCELLED', 4300.00),
('PNR10005', 5, 'CONFIRMED', 7000.00),

('PNR10006', 6, 'CONFIRMED', 3800.00),
('PNR10007', 7, 'PENDING', 5600.00),
('PNR10008', 8, 'CONFIRMED', 4900.00),
('PNR10009', 9, 'CONFIRMED', 8000.00),
('PNR10010', 10, 'CANCELLED', 4200.00),

('PNR10011', 11, 'CONFIRMED', 6500.00),
('PNR10012', 12, 'PENDING', 5400.00),
('PNR10013', 13, 'CONFIRMED', 7200.00),
('PNR10014', 14, 'CONFIRMED', 6100.00),
('PNR10015', 15, 'CANCELLED', 3900.00),

('PNR10016', 16, 'CONFIRMED', 15000.00),
('PNR10017', 17, 'PENDING', 18000.00),
('PNR10018', 18, 'CONFIRMED', 22000.00),
('PNR10019', 19, 'CONFIRMED', 19500.00),
('PNR10020', 20, 'CANCELLED', 14000.00),

('PNR10021', 21, 'CONFIRMED', 12500.00),
('PNR10022', 22, 'CONFIRMED', 11000.00),
('PNR10023', 23, 'PENDING', 9000.00),
('PNR10024', 24, 'CONFIRMED', 10500.00),
('PNR10025', 25, 'CANCELLED', 9800.00),

('PNR10026', 26, 'CONFIRMED', 30000.00),
('PNR10027', 27, 'CONFIRMED', 28000.00),
('PNR10028', 28, 'PENDING', 32000.00),
('PNR10029', 29, 'CONFIRMED', 31000.00),
('PNR10030', 30, 'CANCELLED', 27000.00),

('PNR10031', 31, 'CONFIRMED', 5000.00),
('PNR10032', 32, 'CONFIRMED', 5200.00),
('PNR10033', 33, 'PENDING', 5400.00),
('PNR10034', 34, 'CONFIRMED', 5600.00),
('PNR10035', 35, 'CANCELLED', 5800.00),

('PNR10036', 36, 'CONFIRMED', 6000.00),
('PNR10037', 37, 'CONFIRMED', 6200.00),
('PNR10038', 38, 'PENDING', 6400.00),
('PNR10039', 39, 'CONFIRMED', 6600.00),
('PNR10040', 40, 'CANCELLED', 6800.00),

('PNR10041', 1, 'CONFIRMED', 7000.00),
('PNR10042', 2, 'CONFIRMED', 7200.00),
('PNR10043', 3, 'PENDING', 7400.00),
('PNR10044', 4, 'CONFIRMED', 7600.00),
('PNR10045', 5, 'CANCELLED', 7800.00),

('PNR10046', 6, 'CONFIRMED', 8000.00),
('PNR10047', 7, 'CONFIRMED', 8200.00),
('PNR10048', 8, 'PENDING', 8400.00),
('PNR10049', 9, 'CONFIRMED', 8600.00),
('PNR10050', 10, 'CANCELLED', 8800.00),

('PNR10051', 11, 'CONFIRMED', 9000.00),
('PNR10052', 12, 'CONFIRMED', 9200.00),
('PNR10053', 13, 'PENDING', 9400.00),
('PNR10054', 14, 'CONFIRMED', 9600.00),
('PNR10055', 15, 'CANCELLED', 9800.00),

('PNR10056', 16, 'CONFIRMED', 10000.00),
('PNR10057', 17, 'CONFIRMED', 10200.00),
('PNR10058', 18, 'PENDING', 10400.00),
('PNR10059', 19, 'CONFIRMED', 10600.00),
('PNR10060', 20, 'CANCELLED', 10800.00),

('PNR10061', 21, 'CONFIRMED', 11000.00),
('PNR10062', 22, 'CONFIRMED', 11200.00),
('PNR10063', 23, 'PENDING', 11400.00),
('PNR10064', 24, 'CONFIRMED', 11600.00),
('PNR10065', 25, 'CANCELLED', 11800.00);

CREATE TABLE booking_passengers (

    booking_passenger_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    booking_id BIGINT NOT NULL,

    passenger_id BIGINT NOT NULL,

    FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id),

    FOREIGN KEY (passenger_id)
        REFERENCES passengers(passenger_id)
);

INSERT INTO booking_passengers (booking_id, passenger_id)
VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),

(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),

(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30),

(31,31),(32,32),(33,33),(34,34),(35,35),
(36,36),(37,37),(38,38),(39,39),(40,40),

(41,41),(42,42),(43,43),(44,44),(45,45),
(46,46),(47,47),(48,48),(49,49),(50,50),

(51,51),(52,52),(53,53),(54,54),(55,55),
(56,56),(57,57),(58,58),(59,59),(60,60),

-- extra mappings (group bookings / shared passengers)
(61,1),(62,2),(63,3),(64,4),(65,5);

CREATE TABLE seats (

    seat_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    aircraft_id BIGINT NOT NULL,

    seat_number VARCHAR(10),

    seat_class ENUM(
        'ECONOMY',
        'BUSINESS',
        'FIRST'
    ),

    FOREIGN KEY (aircraft_id)
        REFERENCES aircrafts(aircraft_id)
);

INSERT INTO seats (aircraft_id, seat_number, seat_class)
VALUES

-- Aircraft 1 (Economy)
(1, '1A', 'ECONOMY'), (1, '1B', 'ECONOMY'), (1, '1C', 'ECONOMY'),
(1, '2A', 'ECONOMY'), (1, '2B', 'ECONOMY'), (1, '2C', 'ECONOMY'),
(1, '3A', 'ECONOMY'), (1, '3B', 'ECONOMY'), (1, '3C', 'ECONOMY'),

-- Aircraft 2 (Business + Economy)
(2, '1A', 'BUSINESS'), (2, '1B', 'BUSINESS'),
(2, '2A', 'BUSINESS'), (2, '2B', 'BUSINESS'),
(2, '3A', 'ECONOMY'), (2, '3B', 'ECONOMY'),
(2, '4A', 'ECONOMY'), (2, '4B', 'ECONOMY'),

-- Aircraft 3 (Mixed)
(3, '1A', 'FIRST'), (3, '1B', 'FIRST'),
(3, '2A', 'BUSINESS'), (3, '2B', 'BUSINESS'),
(3, '3A', 'ECONOMY'), (3, '3B', 'ECONOMY'),
(3, '4A', 'ECONOMY'), (3, '4B', 'ECONOMY'),
(3, '5A', 'ECONOMY'), (3, '5B', 'ECONOMY'),

-- Aircraft 4
(4, '1A', 'BUSINESS'), (4, '1B', 'BUSINESS'),
(4, '2A', 'ECONOMY'), (4, '2B', 'ECONOMY'),
(4, '3A', 'ECONOMY'), (4, '3B', 'ECONOMY'),
(4, '4A', 'ECONOMY'), (4, '4B', 'ECONOMY'),

-- Aircraft 5
(5, '1A', 'ECONOMY'), (5, '1B', 'ECONOMY'),
(5, '2A', 'ECONOMY'), (5, '2B', 'ECONOMY'),
(5, '3A', 'ECONOMY'), (5, '3B', 'ECONOMY'),
(5, '4A', 'ECONOMY'), (5, '4B', 'ECONOMY'),
(5, '5A', 'ECONOMY'), (5, '5B', 'ECONOMY'),

-- Aircraft 6
(6, '1A', 'FIRST'), (6, '1B', 'FIRST'),
(6, '2A', 'BUSINESS'), (6, '2B', 'BUSINESS'),
(6, '3A', 'BUSINESS'), (6, '3B', 'BUSINESS'),
(6, '4A', 'ECONOMY'), (6, '4B', 'ECONOMY'),

-- Aircraft 7
(7, '1A', 'BUSINESS'), (7, '1B', 'BUSINESS'),
(7, '2A', 'ECONOMY'), (7, '2B', 'ECONOMY'),
(7, '3A', 'ECONOMY'), (7, '3B', 'ECONOMY'),

-- Aircraft 8
(8, '1A', 'FIRST'), (8, '1B', 'FIRST'),
(8, '2A', 'BUSINESS'), (8, '2B', 'BUSINESS'),
(8, '3A', 'BUSINESS'), (8, '3B', 'BUSINESS');



CREATE TABLE seat_assignments (

    assignment_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    booking_passenger_id BIGINT,

    flight_instance_id BIGINT,

    seat_id BIGINT,

    UNIQUE(
      flight_instance_id,
      seat_id
    ),

    FOREIGN KEY (booking_passenger_id)
        REFERENCES booking_passengers(
            booking_passenger_id
        ),

    FOREIGN KEY (seat_id)
        REFERENCES seats(seat_id)
);

INSERT INTO seat_assignments
(booking_passenger_id, flight_instance_id, seat_id)
VALUES

(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),

(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),

(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),

(16,16,16),
(17,17,17),
(18,18,18),
(19,19,19),
(20,20,20),

(21,21,21),
(22,22,22),
(23,23,23),
(24,24,24),
(25,25,25),

(26,26,26),
(27,27,27),
(28,28,28),
(29,29,29),
(30,30,30),

(31,31,31),
(32,32,32),
(33,33,33),
(34,34,34),
(35,35,35),

(36,36,36),
(37,37,37),
(38,38,38),
(39,39,39),
(40,40,40),

(41,1,41),
(42,2,42),
(43,3,43),
(44,4,44),
(45,5,45),

(46,6,46),
(47,7,47),
(48,8,48),
(49,9,49),
(50,10,50),

(51,11,51),
(52,12,52),
(53,13,53),
(54,14,54),
(55,15,55),

(56,16,56),
(57,17,57),
(58,18,58),
(59,19,59),
(60,20,60),

(1,21,61),
(2,22,62),
(3,23,63),
(4,24,64),
(5,25,65);

CREATE TABLE payments (

    payment_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    booking_id BIGINT NOT NULL,

    amount DECIMAL(12,2),

    payment_method ENUM(
        'UPI',
        'CARD',
        'NETBANKING'
    ),

    payment_status ENUM(
        'SUCCESS',
        'FAILED',
        'REFUNDED'
    ),

    transaction_id VARCHAR(100),

    payment_time DATETIME,

    FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id)
);

INSERT INTO payments
(booking_id, amount, payment_method, payment_status, transaction_id, payment_time)
VALUES

(1, 4500.00, 'UPI', 'SUCCESS', 'TXN10001', '2026-06-10 10:00:00'),
(2, 5200.00, 'CARD', 'SUCCESS', 'TXN10002', '2026-06-10 10:05:00'),
(3, 6100.00, 'NETBANKING', 'PENDING', 'TXN10003', '2026-06-10 10:10:00'),
(4, 4300.00, 'UPI', 'FAILED', 'TXN10004', '2026-06-10 10:15:00'),
(5, 7000.00, 'CARD', 'SUCCESS', 'TXN10005', '2026-06-10 10:20:00'),

(6, 3800.00, 'UPI', 'SUCCESS', 'TXN10006', '2026-06-10 10:25:00'),
(7, 5600.00, 'CARD', 'FAILED', 'TXN10007', '2026-06-10 10:30:00'),
(8, 4900.00, 'NETBANKING', 'SUCCESS', 'TXN10008', '2026-06-10 10:35:00'),
(9, 8000.00, 'UPI', 'SUCCESS', 'TXN10009', '2026-06-10 10:40:00'),
(10, 4200.00, 'CARD', 'REFUNDED', 'TXN10010', '2026-06-10 10:45:00'),

(11, 6500.00, 'UPI', 'SUCCESS', 'TXN10011', '2026-06-10 10:50:00'),
(12, 5400.00, 'NETBANKING', 'FAILED', 'TXN10012', '2026-06-10 10:55:00'),
(13, 7200.00, 'CARD', 'SUCCESS', 'TXN10013', '2026-06-10 11:00:00'),
(14, 6100.00, 'UPI', 'SUCCESS', 'TXN10014', '2026-06-10 11:05:00'),
(15, 3900.00, 'CARD', 'CANCELLED', 'TXN10015', '2026-06-10 11:10:00'),

(16, 15000.00, 'UPI', 'SUCCESS', 'TXN10016', '2026-06-10 11:15:00'),
(17, 18000.00, 'CARD', 'SUCCESS', 'TXN10017', '2026-06-10 11:20:00'),
(18, 22000.00, 'NETBANKING', 'SUCCESS', 'TXN10018', '2026-06-10 11:25:00'),
(19, 19500.00, 'UPI', 'FAILED', 'TXN10019', '2026-06-10 11:30:00'),
(20, 14000.00, 'CARD', 'REFUNDED', 'TXN10020', '2026-06-10 11:35:00'),

(21, 12500.00, 'UPI', 'SUCCESS', 'TXN10021', '2026-06-10 11:40:00'),
(22, 11000.00, 'CARD', 'SUCCESS', 'TXN10022', '2026-06-10 11:45:00'),
(23, 9000.00, 'NETBANKING', 'FAILED', 'TXN10023', '2026-06-10 11:50:00'),
(24, 10500.00, 'UPI', 'SUCCESS', 'TXN10024', '2026-06-10 11:55:00'),
(25, 9800.00, 'CARD', 'SUCCESS', 'TXN10025', '2026-06-10 12:00:00'),

(26, 30000.00, 'UPI', 'SUCCESS', 'TXN10026', '2026-06-10 12:05:00'),
(27, 28000.00, 'CARD', 'SUCCESS', 'TXN10027', '2026-06-10 12:10:00'),
(28, 32000.00, 'NETBANKING', 'PENDING', 'TXN10028', '2026-06-10 12:15:00'),
(29, 31000.00, 'UPI', 'SUCCESS', 'TXN10029', '2026-06-10 12:20:00'),
(30, 27000.00, 'CARD', 'FAILED', 'TXN10030', '2026-06-10 12:25:00'),

(31, 5000.00, 'UPI', 'SUCCESS', 'TXN10031', '2026-06-10 12:30:00'),
(32, 5200.00, 'CARD', 'SUCCESS', 'TXN10032', '2026-06-10 12:35:00'),
(33, 5400.00, 'NETBANKING', 'SUCCESS', 'TXN10033', '2026-06-10 12:40:00'),
(34, 5600.00, 'UPI', 'FAILED', 'TXN10034', '2026-06-10 12:45:00'),
(35, 5800.00, 'CARD', 'REFUNDED', 'TXN10035', '2026-06-10 12:50:00'),

(36, 6000.00, 'UPI', 'SUCCESS', 'TXN10036', '2026-06-10 12:55:00'),
(37, 6200.00, 'CARD', 'SUCCESS', 'TXN10037', '2026-06-10 13:00:00'),
(38, 6400.00, 'NETBANKING', 'FAILED', 'TXN10038', '2026-06-10 13:05:00'),
(39, 6600.00, 'UPI', 'SUCCESS', 'TXN10039', '2026-06-10 13:10:00'),
(40, 6800.00, 'CARD', 'SUCCESS', 'TXN10040', '2026-06-10 13:15:00'),

(41, 7000.00, 'UPI', 'SUCCESS', 'TXN10041', '2026-06-10 13:20:00'),
(42, 7200.00, 'CARD', 'SUCCESS', 'TXN10042', '2026-06-10 13:25:00'),
(43, 7400.00, 'NETBANKING', 'PENDING', 'TXN10043', '2026-06-10 13:30:00'),
(44, 7600.00, 'UPI', 'SUCCESS', 'TXN10044', '2026-06-10 13:35:00'),
(45, 7800.00, 'CARD', 'CANCELLED', 'TXN10045', '2026-06-10 13:40:00'),

(46, 8000.00, 'UPI', 'SUCCESS', 'TXN10046', '2026-06-10 13:45:00'),
(47, 8200.00, 'CARD', 'SUCCESS', 'TXN10047', '2026-06-10 13:50:00'),
(48, 8400.00, 'NETBANKING', 'FAILED', 'TXN10048', '2026-06-10 13:55:00'),
(49, 8600.00, 'UPI', 'SUCCESS', 'TXN10049', '2026-06-10 14:00:00'),
(50, 8800.00, 'CARD', 'SUCCESS', 'TXN10050', '2026-06-10 14:05:00'),

(51, 9000.00, 'UPI', 'SUCCESS', 'TXN10051', '2026-06-10 14:10:00'),
(52, 9200.00, 'CARD', 'SUCCESS', 'TXN10052', '2026-06-10 14:15:00'),
(53, 9400.00, 'NETBANKING', 'PENDING', 'TXN10053', '2026-06-10 14:20:00'),
(54, 9600.00, 'UPI', 'SUCCESS', 'TXN10054', '2026-06-10 14:25:00'),
(55, 9800.00, 'CARD', 'FAILED', 'TXN10055', '2026-06-10 14:30:00'),

(56, 10000.00, 'UPI', 'SUCCESS', 'TXN10056', '2026-06-10 14:35:00'),
(57, 10200.00, 'CARD', 'SUCCESS', 'TXN10057', '2026-06-10 14:40:00'),
(58, 10400.00, 'NETBANKING', 'SUCCESS', 'TXN10058', '2026-06-10 14:45:00'),
(59, 10600.00, 'UPI', 'FAILED', 'TXN10059', '2026-06-10 14:50:00'),
(60, 10800.00, 'CARD', 'REFUNDED', 'TXN10060', '2026-06-10 14:55:00'),

(61, 11000.00, 'UPI', 'SUCCESS', 'TXN10061', '2026-06-10 15:00:00'),
(62, 11200.00, 'CARD', 'SUCCESS', 'TXN10062', '2026-06-10 15:05:00'),
(63, 11400.00, 'NETBANKING', 'PENDING', 'TXN10063', '2026-06-10 15:10:00'),
(64, 11600.00, 'UPI', 'SUCCESS', 'TXN10064', '2026-06-10 15:15:00'),
(65, 11800.00, 'CARD', 'SUCCESS', 'TXN10065', '2026-06-10 15:20:00');


CREATE TABLE baggage (

    baggage_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    booking_passenger_id BIGINT,

    weight_kg DECIMAL(5,2),

    baggage_tag VARCHAR(50),

    FOREIGN KEY (
        booking_passenger_id
    )
    REFERENCES booking_passengers(
        booking_passenger_id
    )
);

INSERT INTO baggage
(booking_passenger_id, weight_kg, baggage_tag)
VALUES

(1, 15.00, 'BG10001'),
(2, 18.50, 'BG10002'),
(3, 20.00, 'BG10003'),
(4, 22.00, 'BG10004'),
(5, 25.00, 'BG10005'),

(6, 15.50, 'BG10006'),
(7, 17.00, 'BG10007'),
(8, 19.00, 'BG10008'),
(9, 21.00, 'BG10009'),
(10, 23.50, 'BG10010'),

(11, 28.00, 'BG10011'),
(12, 30.00, 'BG10012'),
(13, 32.50, 'BG10013'),
(14, 35.00, 'BG10014'),
(15, 38.00, 'BG10015'),

(16, 16.00, 'BG10016'),
(17, 18.00, 'BG10017'),
(18, 20.50, 'BG10018'),
(19, 22.50, 'BG10019'),
(20, 24.00, 'BG10020'),

(21, 15.00, 'BG10021'),
(22, 16.50, 'BG10022'),
(23, 18.50, 'BG10023'),
(24, 20.00, 'BG10024'),
(25, 22.00, 'BG10025'),

(26, 25.00, 'BG10026'),
(27, 27.50, 'BG10027'),
(28, 29.00, 'BG10028'),
(29, 31.00, 'BG10029'),
(30, 33.00, 'BG10030'),

(31, 15.00, 'BG10031'),
(32, 17.00, 'BG10032'),
(33, 19.00, 'BG10033'),
(34, 21.00, 'BG10034'),
(35, 23.00, 'BG10035'),

(36, 24.50, 'BG10036'),
(37, 26.00, 'BG10037'),
(38, 28.00, 'BG10038'),
(39, 30.00, 'BG10039'),
(40, 32.00, 'BG10040'),

(41, 15.50, 'BG10041'),
(42, 16.00, 'BG10042'),
(43, 17.50, 'BG10043'),
(44, 18.00, 'BG10044'),
(45, 19.50, 'BG10045'),

(46, 20.00, 'BG10046'),
(47, 21.50, 'BG10047'),
(48, 23.00, 'BG10048'),
(49, 24.50, 'BG10049'),
(50, 26.00, 'BG10050'),

(51, 28.50, 'BG10051'),
(52, 30.00, 'BG10052'),
(53, 32.00, 'BG10053'),
(54, 34.00, 'BG10054'),
(55, 36.00, 'BG10055'),

(56, 15.00, 'BG10056'),
(57, 16.50, 'BG10057'),
(58, 18.00, 'BG10058'),
(59, 19.50, 'BG10059'),
(60, 21.00, 'BG10060'),

-- extra baggage entries (some passengers have 2 bags)
(1, 10.00, 'BG10061'),
(2, 12.50, 'BG10062'),
(3, 14.00, 'BG10063'),
(4, 16.00, 'BG10064'),
(5, 18.00, 'BG10065');


CREATE TABLE crew_members (

    crew_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    first_name VARCHAR(100),

    last_name VARCHAR(100),

    role ENUM(
        'PILOT',
        'COPILOT',
        'CABIN_CREW'
    )
);

INSERT INTO crew_members (first_name, last_name, role)
VALUES

('Aarav', 'Sharma', 'PILOT'),
('Vivaan', 'Mehta', 'PILOT'),
('Aditya', 'Verma', 'PILOT'),
('Rohan', 'Kapoor', 'PILOT'),
('Karan', 'Iyer', 'PILOT'),

('Neha', 'Singh', 'COPILOT'),
('Isha', 'Patel', 'COPILOT'),
('Pooja', 'Reddy', 'COPILOT'),
('Sneha', 'Nair', 'COPILOT'),
('Ananya', 'Das', 'COPILOT'),

('Rahul', 'Kumar', 'CABIN_CREW'),
('Amit', 'Joshi', 'CABIN_CREW'),
('Sahil', 'Gupta', 'CABIN_CREW'),
('Vikram', 'Bose', 'CABIN_CREW'),
('Arjun', 'Malhotra', 'CABIN_CREW'),

('Priya', 'Sharma', 'CABIN_CREW'),
('Riya', 'Chopra', 'CABIN_CREW'),
('Meera', 'Menon', 'CABIN_CREW'),
('Divya', 'Iyer', 'CABIN_CREW'),
('Kavya', 'Rao', 'CABIN_CREW'),

('Harsh', 'Singh', 'CABIN_CREW'),
('Yash', 'Verma', 'CABIN_CREW'),
('Nikhil', 'Saxena', 'CABIN_CREW'),
('Manish', 'Tiwari', 'CABIN_CREW'),
('Deepak', 'Yadav', 'CABIN_CREW'),

('Sana', 'Khan', 'CABIN_CREW'),
('Zoya', 'Ali', 'CABIN_CREW'),
('Fatima', 'Shaikh', 'CABIN_CREW'),
('Ayesha', 'Begum', 'CABIN_CREW'),
('Noor', 'Ansari', 'CABIN_CREW'),

('Captain', 'Raina', 'PILOT'),
('Captain', 'Singhania', 'PILOT'),
('Captain', 'Bhatt', 'PILOT'),
('Captain', 'Chatterjee', 'PILOT'),
('Captain', 'Nair', 'PILOT'),

('Anjali', 'Shukla', 'COPILOT'),
('Simran', 'Kaur', 'COPILOT'),
('Neelam', 'Desai', 'COPILOT'),
('Trisha', 'Banerjee', 'COPILOT'),
('Rekha', 'Mishra', 'COPILOT');



CREATE TABLE crew_assignments (

    assignment_id BIGINT
    PRIMARY KEY AUTO_INCREMENT,

    crew_id BIGINT NOT NULL,

    flight_instance_id BIGINT NOT NULL,

    FOREIGN KEY (crew_id)
        REFERENCES crew_members(crew_id),

    FOREIGN KEY (
       flight_instance_id
    )
    REFERENCES flight_instances(
       flight_instance_id
    )
);

INSERT INTO crew_assignments (crew_id, flight_instance_id)
VALUES

(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),

(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),

(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30),

(31,31),(32,32),(33,33),(34,34),(35,35),
(36,36),(37,37),(38,38),(39,39),(40,40);


---operations 
SELECT
    f.flight_number,
    a1.city AS source_city,
    a2.city AS destination_city
FROM flights f
JOIN airports a1
    ON f.source_airport_id = a1.airport_id
JOIN airports a2
    ON f.destination_airport_id = a2.airport_id;

    SELECT
    f.flight_number,
    COUNT(bp.passenger_id) AS total_passengers
FROM flights f
JOIN flight_instances fi
    ON f.flight_id = fi.flight_id
JOIN bookings b
    ON fi.flight_instance_id = b.flight_instance_id
JOIN booking_passengers bp
    ON b.booking_id = bp.booking_id
GROUP BY f.flight_number;

SELECT
    f.flight_number,
    SUM(b.total_amount) AS revenue
FROM flights f
JOIN flight_instances fi
    ON f.flight_id = fi.flight_id
JOIN bookings b
    ON fi.flight_instance_id = b.flight_instance_id
GROUP BY f.flight_number;

SELECT
    f.flight_number,
    COUNT(*) AS bookings_count
FROM flights f
JOIN flight_instances fi
    ON f.flight_id = fi.flight_id
JOIN bookings b
    ON fi.flight_instance_id = b.flight_instance_id
GROUP BY f.flight_number
ORDER BY bookings_count DESC
LIMIT 1;

SELECT
    p.first_name,
    COUNT(*) AS trips
FROM passengers p
JOIN booking_passengers bp
    ON p.passenger_id = bp.passenger_id
JOIN bookings b
    ON bp.booking_id = b.booking_id
GROUP BY p.passenger_id
HAVING COUNT(*) > 3;
