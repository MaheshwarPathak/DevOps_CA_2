const express = require("express");
const app = express();

app.get("/health", (req, res) => {
  res.json({ status: "Server is running ✅" });
});

app.get("/status", (req, res) => {
  res.json({
    app: "inventory-service",
    uptime: process.uptime(),
    status: "OK"
  });
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});