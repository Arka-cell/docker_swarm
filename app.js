const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  const pid = process.pid;
  res.json({ pid });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});