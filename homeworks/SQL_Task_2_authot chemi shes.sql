-- 1. Create authors table
CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(50),
    nationality VARCHAR(50)
);

-- 2. Create books table (აქ გასწორებულია book_id)
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

-- 3. Add authors
INSERT INTO authors (author_id, author_name, nationality)
VALUES
    (1, 'A.Tsereteli', 'Georgian'),
    (2, 'I.Chavchavadze', 'Georgian');

-- 4. Add books
INSERT INTO books (book_id, name, author_id)
VALUES
    (1, 'Gamzrdeli', 1),
    (2, 'Otaraant Qvrivi', 2),
    (3, 'Chemo kargo qveekana', 2);

-- 5. Read all books with their authors’ names (JOIN)
SELECT
    books.name AS book_title,
    authors.author_name
FROM books
JOIN authors
    ON books.author_id = authors.author_id;

-- 6. Update an author’s nationality
UPDATE authors 
SET nationality = 'French' 
WHERE author_id = 1;

-- 7. Delete a book by title
DELETE FROM books 
WHERE name = 'Gamzrdeli';