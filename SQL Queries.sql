-- =========================================================================
-- 1. CREATE USERS TABLE
-- =========================================================================
CREATE TABLE Users (
    user_id serial PRIMARY KEY,
    full_name VARCHAR(200) UNIQUE,
    email VARCHAR(255),
    role VARCHAR(100) CHECK(role IN('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(50)
);

