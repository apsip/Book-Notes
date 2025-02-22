# Book Notes

## Description:
Inspired by <URL https://sive.rs/book/NegotiateAnything> this is a website that showcases the books I've read in the past couple of years. The homepage allows the ready to sort the books by title, recency, and rating. Each book has a "Read more" link that takes the reader to a new page with a longer section with my detailed notes on each book. 

All of the books seen on the webpage are being stored in a Postgres database. Each book has an id, title, author, isbn, date read, rating, summary and notes.
When the page is loaded, the server will call the database to display all the relevant information on each book to the reader. 

The cover of each book is dynamically inserted using the Open Library Covers API found here: <URL https://openlibrary.org/dev/docs/api/covers>. While calling each books data from the Postgres database, the application passes the isbn to the Open Library Covers API and retrieves that respective books cover. 

This project was made using EJS templates for the front end. Javascript, Express, and Node.js for the server. Postgres was used for the database. I decided on these tools as they are some of the most popular languages used when building these types of pages. 