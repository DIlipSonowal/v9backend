require('dotenv').config();
var express = require('express');
var https = require('https');
var http = require('http');
var app = express();

const login = require('./app/login');
const home = require('./app/modules/home.js');

app.use('/login', login);
app.use('/home', home);


app.listen(8000, ()=>{
    console.log("server is up at 8000");
});
// app.get("/", (req, res)=>{
//     res.send("this is a get request!");
//     console.log("get request");
// });