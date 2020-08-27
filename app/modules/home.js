
const express = require('express'); 
const Router = express.Router(); 

var cors = require('cors');
//const authTok = require('../jwt');
const bodyParser = require("body-parser");
var jsonParser = bodyParser.json();
app = express();
const con = require('../../database/db');

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
app.use(express.json(), cors());
app.use(express.static('public'));


Router.route('/top-slider').get((req, res, next) => { 
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect(err =>{
    //    if(err) {
    //         res.json({success:0, message:'Server error, please try again!!!'});
    //    } else {
            con.query( "select * from home where `category`='top_slider' order BY id desc limit 3", (err1,result)=> {
                if(err1) {
                    res.json({success:0, message:'Server error, please try again!!'});
               } else {
                   let arr = [];
                   //console.log(result);
                   //res.json(result);
                   result.forEach( el => {
                        arr.push({sub_header: el.sub_header, header: el.header, text_content: el.text_content, img:`./v9Backend/top_slider/${el.img}`});
                   });
                   res.json(arr);
               }
            });
     //  }
   });
});

Router.route('/our-goals').get((req, res, next) => { 
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect(err =>{
        // if(err) {
        //      res.json({success:0, message:'Server error, please try again!!!'});
        // } else {
             con.query( "select * from home where `category`='our_goals' order BY id desc limit 1", (err1,result)=> {
                 if(err1) {
                     res.json({success:0, message:'Server error, please try again!!'});
                } else {
                    let arr = [];
                    //console.log(result);
                    //res.json(result);
                    result.forEach( el => {
                         
                         let aimg = [];
                         el.img.split(',').forEach(im =>{
                            aimg.push(`./v9Backend/images/${im}`);
                         });
                         arr.push({sub_header: el.sub_header, header: el.header, text_content: el.text_content, img:aimg});
                    });
                    res.json(arr);
                }
             });
       // }
    });
});
   
module.exports = Router; 