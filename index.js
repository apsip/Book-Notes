import express from "express";
import bodyParser from "body-parser";

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));


// Basic Route
app.get("/", (req, res) => {
    res.render("index.ejs");
});


// Start Server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
