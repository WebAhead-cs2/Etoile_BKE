const express = require("express");
const PORT = process.env.PORT || 3001;
const app = express();
var path = require("path");
const cors = require("cors");
const cookieParser = require("cookie-parser");
app.use(cookieParser());
app.use(express.urlencoded({ extended: false }));
//const db = require('./src/Database/connection');

app.use(cors());

app.use(express.static(path.join(__dirname, "../Etoile/public")));
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "../Etoile/public/index.html"));
});

//   app.get("/menu", (req, res) => {
//     res.sendFile(`${__dirname}/public/menu/menu.html`);
//   });

//   app.get("/sign-up", (req, res) => {
//     res.sendFile(`${__dirname}/public/sign-up/sign-up.html`);
//   });

//   app.get("/sign-in", (req, res) => {
//     res.sendFile(`${__dirname}/public/sign-in/sign-in.html`);
//   });

//   app.get("/menuAfter", (req, res) => {
//     res.sendFile(`${__dirname}/public/menuAfter/menuAfter.html`);
//   });

//   app.get("/review", (req, res) => {
//     res.sendFile(`${__dirname}/public/review`);
//   });

app.get("/api"), (req, res) => {
    res.json({ message: "Hello from server!" });
}

app.listen(PORT, () => {
    console.log(`Server listening on ${PORT}`);
});