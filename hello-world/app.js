const express = require("express");

let app = express();

app.use(express.static("html"));

app.get("*", (req, res) => {
  res.sendFile(__dirname + "/html/hello.html");
});

app.listen(8080);
console.log("Listening http://localhost:8080/");
