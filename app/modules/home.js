
const express = require('express'); 
const Router = express.Router(); 
const authTok = require('../jwt');
const bodyParser = require("body-parser");
const multer = require('multer');
const topslider = multer({dest: __dirname + '/assets/top_slider'});
var jsonParser = bodyParser.json();
app = express();
app.use(bodyParser.json());
app.use(express.json());
app.use(express.static('public'));
   
Router.route('/top-slider')
.get(authTok,(req, res, next) => { 
    res.end('When a GET request is made, then this '
            + 'is the response sent to the client!'); 
}) 
.post(authTok, topslider.single('photo'), (req, res, next) => { 
    //const data = req.body;
    if(req.image) {
        res.json(req.image);
    }
    //else throw 'error';
    console.log(req);
    //res.json({});
});


Router.route('/our-goals') 
.all((req, res, next) => {  
    res.statusCode = 200; 
    res.setHeader('Content-Type', 'text/plain'); 
    next(); 
}) 
.get((req, res, next) => { 
    res.end('our goals'); 
}) 
.post((req, res, next) => { 
    console.log(req.body);
    res.end('When a POST request is made, then this '
            + 'is the response sent to the client!'); 
}) 
.put((req, res, next) => { 
    res.end('When a PUT request is made, then this '
            + 'is the response sent to the client!'); 
}) 
.delete((req, res, next) => { 
    res.end('When a DELETE request is made, then this '
            + 'is the response sent to the client!'); 
}); 
   
module.exports = Router; 