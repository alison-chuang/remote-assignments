const http = require('http');
const express = require('express');
const bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");
const app = express();
const port = 3000;
const path = require('path');

app.use(bodyParser.urlencoded({extended: false}));

app.use(express.static('public'));

//app.set('view engine', 'pug');
//app.get('/', (req, res) => {
    //res.send("Hello, server!");
    //res.render('index');
//});

//Assignment-2
// 1. 是空值
// 2. 非正整數的所有輸入值
// 3. 正整數

app.get('/data', (req, res) => {
    const {number} = req.query //const number = req.query.number
    if ( number == null ) { 
        console.log(number);
        return res.json({ message : "Lack of Parameter" });
    }

    let n = Number(number);
    let sum = (1 + n) * n / 2;
    if ( n > 0 && n%1 == 0) {
        return res.json({ result : sum });
    }
    else if ( Number.isNaN(number) || n <= 0 || !n%1 == 0 ){
        return res.json({ message : "Wrong Parameter" });
    }
});

// app.get('/', (req, res) => {
//     res.render('myName');
// })

app.get("/myName", (req, res) => {
    res.sendFile(path.resolve(__dirname, "./public/myName.html"));
});

app.get("/trackName", (req, res) => {
    const {name} = req.query;
    res.cookie("name", name);
    res.redirect("/myName");
});

app.listen(port, () => {
    console.log(`The application is runnung on localhost ${port}`);
});



