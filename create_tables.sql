-- Create Customer table
CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

-- Create Movie table
CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    duration INT
);

-- Create Ticket table
CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    movie_id INT REFERENCES Movie(movie_id),
    showtime TIMESTAMP NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

-- Create Concession table
CREATE TABLE Concession (
    concession_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    name VARCHAR(100) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);
