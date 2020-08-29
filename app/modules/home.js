
const express = require('express'); 
const Router = express.Router(); 

var cors = require('cors');
const authTok = require('../jwt');
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

Router.route('/about')
.get((req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect((err) =>{
        const sql = `select * from home where category="home_about" order by id desc  limit 1`;
        con.query(sql, (err1, result)=>{
            if(err1) {
                res.json({ success: 0, message: "Server error, try again later"});
            } else {
                const resData = {
                    category: result[0].category,
                    sub_header: result[0].sub_header,
                    header: result[0].header,
                    text_content: result[0].text_content
                }
                res.json(resData);
            }
        });
    });
})
.post(authTok, (req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    const data = req.body;
    con.connect((err)=>{
        const sql = `insert into home (category, sub_header, header, text_content) values("home_about", "${data.sub_header}","${data.header}","${data.text_content}")`;
        con.query(sql, (err1, result)=>{
            if(err1) {
                res.json({ success: 0, message: "Server error, try again later!"});
            } else {
                res.json({success: 1, message: "Data added successfully into about section."});
            }
        });
    });
});

Router.route('/whychooseus')
.get( (req,res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( (err)=>{
        const sql=`select * from home where category="why_us" order by id desc limit 1`;
        con.query(sql, (err, result)=> {
            let tmp = result[0];
            const a = JSON.parse(tmp.text_content);
            a['immigration'].icon = `./v9Backend/images/${a['immigration'].icon}`;
            a['customer'].icon = `./v9Backend/images/${a['customer'].icon}`;
            a['student'].icon = `./v9Backend/images/${a['student'].icon}`;
            a['country'].icon = `./v9Backend/images/${a['country'].icon}`;
            const dta = {
                sub_header: tmp.sub_header,
                header:tmp.header,
                immigration: a.immigration,
                customer:a.customer,
                student:a.student,
                country:a.country
            };
            res.json(dta);
        });
    });
});

Router.route('/immigration_service')
.get( (req,res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( (err)=>{
        const sql=`select * from home where category="immigration_service" order by id desc limit 1`;
        con.query(sql, (err, result)=> {
            let tmp = result[0];
            const a = JSON.parse(tmp.text_content);
            a['family'].img = `./v9Backend/images/${a['family'].img}`;
            a['work'].img = `./v9Backend/images/${a['work'].img}`;
            a['study'].img = `./v9Backend/images/${a['study'].img}`;
            a['visit'].img = `./v9Backend/images/${a['visit'].img}`;
            a['citizenship'].img = `./v9Backend/images/${a['citizenship'].img}`;
            a['other'].img = `./v9Backend/images/${a['other'].img}`;
            const dta = {
                sub_header: tmp.sub_header,
                header:tmp.header,
                family: a.family,
                work:a.work,
                study:a.study,
                visit:a.visit,
                citizenship:a.citizenship,
                other:a.other
            };
            res.json(dta);
        });
    });
});
   
module.exports = Router; 