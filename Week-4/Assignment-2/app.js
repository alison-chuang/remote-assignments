const http = require('http');
const express = require('express');
const app = express();
const port = 3000;
const path = require('path');

app.use(express.static('public'));

app.get('/', (req, res) => {
	res.sendFile(path.resolve(__dirname, './public/Assignment-2.html'));
});

app.listen(port, () => {
	console.log(`The application is runnung on localhost ${port}`);
});
