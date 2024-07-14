-- Insert sample customers
INSERT INTO Customer (first_name, last_name) VALUES
('John', 'Doe'),
('Jane', 'Smith');

-- Insert sample movies
INSERT INTO Movie (title, genre, duration) VALUES
('Inception', 'Sci-Fi', 148),
('The Godfather', 'Crime', 175);

-- Insert sample tickets
INSERT INTO Ticket (customer_id, movie_id, showtime, price) VALUES
(1, 1, '2024-07-15 19:00:00', 12.50),
(2, 2, '2024-07-15 20:00:00', 15.00);

-- Insert sample concessions
INSERT INTO Concession (customer_id, name, price) VALUES
(1, 'Popcorn', 5.00),
(2, 'Soda', 3.50);
