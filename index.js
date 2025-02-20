import express from "express";
import bodyParser from "body-parser";
import pg from "pg";

const app = express();
const port = 3000;

const db = new pg.Client({
    user: "postgres",
    host: "localhost",
    database: "my_books",
    password: "Apsip1826",
    port: 5432,
  });
  db.connect();

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));


// Basic Route
app.get("/", async (req, res) => {
    try {
        const result = await db.query("SELECT title, author, date_read, rating, notes, isbn FROM books");
        console.log(result.rows); // Log the books table to the console (for debugging)
        
        res.render("index.ejs", { books: result.rows }); // Send data to EJS template
      } catch (error) {
        console.error("Error fetching books:", error);
        res.status(500).send("Database error");
      }
});


// Start Server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
