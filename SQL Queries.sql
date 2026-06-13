-- 1. CREATE USERS TABLE
CREATE TABLE Users (
    user_id serial PRIMARY KEY,
    full_name VARCHAR(200) UNIQUE,
    email VARCHAR(255),
    role VARCHAR(100) CHECK(role IN('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(50)
);

-- DATA SEEDING: INSERT SAMPLE DATA INTO USERS
INSERT INTO Users (user_id, full_name, email, role, phone_number) VALUES
(1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
(2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
(3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
(4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL);


-- 2. CREATE MATCHES TABLE
CREATE TABLE Matches (
    match_id SERIAL PRIMARY KEY,
    fixture VARCHAR(255),
    tournament_category VARCHAR(100),
    base_ticket_price DECIMAL(10, 2)
    CHECK(base_ticket_price > 0),
  
    match_status VARCHAR(50)
    CHECK(match_status IN('Available', 'Selling Fast', 'Sold Out', 'Postponed'))
);


-- DATA SEEDING: INSERT SAMPLE DATA INTO MATCHES
INSERT INTO Matches (match_id, fixture, tournament_category, base_ticket_price, match_status)
VALUES(10, 'Real Madrid vs Barcelona', 'Champions League', 20, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120.00, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130.00, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90.00, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80.00, 'Available');