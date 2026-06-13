const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
    res.send('<h1>🚀 Welcome to my DevOps Portfolio Website!</h1><p>Containerized with Docker successfully.</p>');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
