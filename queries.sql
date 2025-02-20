CREATE TABLE books (
    id SERIAL PRIMARY KEY,         -- Unique identifier for each book
    title VARCHAR(255) NOT NULL,   -- Book title (up to 255 characters)
    isbn VARCHAR(20) UNIQUE,       -- ISBN (unique identifier for books)
    author VARCHAR(255) NOT NULL,  -- Author's name
    date_read DATE NOT NULL,       -- When I finished reading the book
    rating INTEGER CHECK (rating BETWEEN 1 AND 10),  -- Rating (1-10 scale)
    notes TEXT                     -- Thoughts on and summary of the book 
);
