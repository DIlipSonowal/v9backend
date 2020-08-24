
const express = require('express'); 
const Router = express.Router(); 
const authTok = require('../jwt');
const bodyParser = require("body-parser");
//const multer = require('multer');
//const topslider = multer({dest: 'top_slider/'});
var multer  = require('multer')
var upload = multer({ dest: 'uploads/' })
//var jsonParser = bodyParser.json();
app = express();


// app.post('/top-slider', authTok, upload.single('image_name'),  (req, res)=> {
//     // req.file is the name of your file in the form above, here 'uploaded_file'
//     // req.body will hold the text fields, if there were any 
//     console.log(req.file, req.body)
//     respo
//  });


//app.use(bodyParser.urlencoded({extended: false}));
//app.use(bodyParser.json());
//app.use(express.json());
//app.use(express.static('public'));
  
//  var Storage = multer.diskStorage({
//     destination: function(req, file, callback) {
//         callback(null, "./assets/top_slider");
//     },
//     filename: function(req, file, callback) {
//         callback(null, file.fieldname + "_" + Date.now() + "_" + file.originalname);
//     }
// });
//   var upload = multer({ storage : storage}).single('image');
  

// Router.route('/top-slider')
// .get(authTok,(req, res, next) => { 
//     res.end('When a GET request is made, then this '
//             + 'is the response sent to the client!'); 
// }) 
// .post(authTok, upload.single('image_name'),  (req, res)=> {
//     // req.file is the name of your file in the form above, here 'uploaded_file'
//     // req.body will hold the text fields, if there were any 
//     console.log(req.file, req.body)
//     //const data = req.body;
//     //console.log(req.file);
//     //if(req.files) {
//     //    res.json(req.image);
//     //}
//     //else throw 'error';
//     //res.json(req.file);
//     //res.json({});
// });


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