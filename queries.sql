CREATE TABLE books (
    id SERIAL PRIMARY KEY,         -- Unique identifier for each book
    title VARCHAR(255) NOT NULL,   -- Book title (up to 255 characters)
    isbn VARCHAR(20) UNIQUE,       -- ISBN (unique identifier for books)
    author VARCHAR(255) NOT NULL,  -- Author's name
    date_read DATE NOT NULL,       -- When I finished reading the book
    rating INTEGER CHECK (rating BETWEEN 1 AND 10),  -- Rating (1-10 scale)
    notes TEXT                     -- Thoughts on and summary of the book 
);

--More books that I have read
INSERT INTO books (title, isbn, author, date_read, rating, notes)
VALUES 
	('The Night Circus', '9780385534635', 'Erin Morgenstern', '2024-05-13', 7, 'This was a fun read.'),
	('Bookshops & Bonedust', '9781250886101', 'Travis Baldree', '2023-12-22', 8, 'When an injury throws a young, battle-hungry orc off her chosen path, she may find that what we need is not always what we seek.'),
	('Remarkably Bright Creatures', '9780063204157', 'Shelby Van Pelt', '2024-03-29', 8, 'Remarkably Bright Creatures, an exploration of friendship, reckoning, and hope, tracing a widows unlikely connection with a giant Pacific octopus.'),
	('The Very Secret Society of Irregular Witches', '9780593439357', 'Sangu Mandanna', '2024-05-15' 6, 'A warm and uplifting novel about an isolated witch whose opportunity to embrace a quirky new family--and a new love--changes the course of her life.'),
	('STFU: The Power of Keeping Your Mouth Shut in an Endlessly Noisy World', '9781250850348', 'Dan Lyons', '2023-07-06', 6, 'Talk less, get more. Thats what STFU is all about. Prescriptive, informative, and addictively readable, STFU gives you the tools to become your better self, whether thats in the office, at home, online, or in your most treasured relationships. Because, after all, what you say is who you are.'),
	('Thrawn: Treason', '9781984820983', 'Timothy Zahn', '2023-06-23', 8, 'A satisfactory conclusion to the Thrawn Trilogy'),
	('Thrawn: Alliances', '9780525480488', 'Timothy Zahn', '2023-06-15', 7, 'A bit slower than the first novel, but such an interesting peak into how Thrawns relationship started with Darth Vader'),
    ('Thrawn', '9781780894843', 'Timothy Zahn', '2023-05-30', 9, 'A great introduction to Thrawn and his character. Couldnt put it down!'),
    ('Tomorrow, and Tomorrow, and Tomorrow', '9780735243347', 'Gabrielle Zevin', '2023-05-09', 7, 'A beautiful story about friendship and the power of video games.'),
    ('Legends & Lattes', '9781035007301', 'Travis Baldree', '2023-05-09', 9, 'My first introduction into the whole cozy fantasy genre. I loved it!'),
    ('Babel', '9780593511710', 'R.F. Kuang', '2023-03-31', 10, 'A darkly beautiful story about language and colonialism. This is a must read from me!'),
    ('Project Hail Mary', '9780593135204', 'Andy Weir', '2021-12-30', 10, 'A fun science fiction novel that I could not put down!'),
    ('Klara and the Sun', '9780593318171', 'Kazuo Ishiguro', '2021-11-28', 7, 'From her place in the store, Klara, an Artificial Friend with outstanding observational qualities, watches carefully the behavior of those who come in to browse, and of those who pass on the street outside. She remains hopeful that a customer will soon choose her, but when the possibility emerges that her circumstances may change forever, Klara is warned not to invest too much in the promises of humans.');

    
	
