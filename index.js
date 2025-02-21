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


app.get("/", async (req, res) => {
    try {
        let sortQuery = "ORDER BY rating DESC"; // Default: Top-rated first
        const { sort } = req.query; // Get sort parameter from URL

        if (sort === "title") {
            sortQuery = "ORDER BY title ASC"; // Sort A-Z by title
        } else if (sort === "date") {
            sortQuery = "ORDER BY date_read DESC"; // Newest first
        } else if (sort === "rating") {
            sortQuery = "ORDER BY rating DESC"; // Highest-rated first
        }

        const result = await db.query(`SELECT * FROM books ${sortQuery}`);
        res.render("index.ejs", { books: result.rows });

    } catch (error) {
        console.error("Error fetching books:", error);
        res.status(500).send("Database error");
    }
});

  app.get("/books/:id", async (req, res) => {
    const bookId = req.params.id;
    try {
        const result = await db.query("SELECT * FROM books WHERE id = $1", [bookId]);
        if (result.rows.length === 0) {
            return res.status(404).send("Book not found");
        }
        res.render("book.ejs", { book: result.rows[0] });
    } catch (error) {
        console.error("Error fetching book:", error);
        res.status(500).send("Internal Server Error");
    }
}
);


// Start Server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
