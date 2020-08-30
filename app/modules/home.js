
const express = require('express'); 
const Router = express.Router(); 
const url = require('../../urlhost');
var cors = require('cors');
const authTok = require('../jwt');
const bodyParser = require("body-parser");
var jsonParser = bodyParser.json();
app = express();
const con = require('../../database/db');

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
app.use(express.json(), cors());

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
                   //console.log(url());
                   //res.json(result);
                   result.forEach( el => {
                        arr.push({sub_header: el.sub_header, header: el.header, text_content: el.text_content, img:`${url()}/top_slider/${el.img}`});
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
                            aimg.push(`${url()}/images/${im}`);
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
            a['immigration'].icon = `${url()}/images/${a['immigration'].icon}`;
            a['customer'].icon = `${url()}/images/${a['customer'].icon}`;
            a['student'].icon = `${url()}/images/${a['student'].icon}`;
            a['country'].icon = `${url()}/images/${a['country'].icon}`;
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
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{
                let tmp = result[0];
                const a = JSON.parse(tmp.text_content);
                a['family'].img = `${url()}/images/${a['family'].img}`;
                a['work'].img = `${url()}/images/${a['work'].img}`;
                a['study'].img = `${url()}/images/${a['study'].img}`;
                a['visit'].img = `${url()}/images/${a['visit'].img}`;
                a['citizenship'].img = `${url()}/images/${a['citizenship'].img}`;
                a['other'].img = `${url()}/images/${a['other'].img}`;
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
            }
        });
    });
});
   
Router.route('/how_itworks')
.get( (req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select sub_header, header, text_content from home where category="how_itworks" order by id desc limit 1`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{
                let tmp = result[0];
                const a = JSON.parse(tmp.text_content);
                const dta = {
                    sub_header: tmp.sub_header,
                    header:tmp.header,
                    discussion: a.discussion,
                    documentation:a.documentation,
                    submission:a.submission
                };
                res.json(dta);
            }
        });
    });
})
.post(authTok, (req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    const data = req.body;
    //console.log(data);
    con.connect( err =>{
        const final_string = JSON.stringify({discussion: data['discussion'], documentation: data['documentation'], submission: data['submission']});
        const sql = `insert into home(category, sub_header, header, text_content) values("how_itworks",'${data.header}','${data.sub_header}','${final_string}')`;
        con.query(sql, (err1, result)=>{
            if(err1){
                res.json({success:0, message:"Data did not saved, try again!"});
            } else {
                res.json({success:1, message:"Data saved successfully."});
            }
        });
    });
});

Router.route('/feedback')
.get((req, res)=> {
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select sub_header, header, img from home where category="feed_back" order by id desc limit 3`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{
                
                const dta = result.map((tmp) => {
                   return { 
                        name: tmp.sub_header,
                        feedback:tmp.header,
                        image: `${url()}/images/${tmp.img}`
                   }
                });
                res.json(dta);
            }
        });
    });
});

Router.route('/teams_photo')
.get((req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select img from home where category="teams" order by id desc limit 6`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{        
                const dta = result.map((tmp) => {
                   return { 
                        image: `${url()}/images/${tmp.img}`
                   }
                });
                res.json(dta);
            }
        });
    });
});

Router.route('/aboutV9immigration')
.get( (req, res) =>{
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select header, sub_header, text_content, img from about where category="why-v9" order by id desc limit 1`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{        
                const dta = result[0];
                res.json({
                    header: dta.header,
                    text_content: dta.sub_header,
                    lists: JSON.parse(dta.text_content),
                    img: `${url()}/images/${dta.img}`
                });
            }
        });
    });
});

Router.route('/about_mission')
.get((req,res) => {
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select  header, text_content, img from about where category="our_mission" order by id desc limit 1`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{        
                const dta = result[0];
                res.json({
                    header: dta.header,
                    text_content: dta.text_content,
                    img: `${url()}/images/${dta.img}`
                });
            }
        });
    });
});

Router.route('/our_vission')
.get((req,res) => {
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select  header, text_content, img from about where category="our_vission" order by id desc limit 1`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{        
                const dta = result[0];
                res.json({
                    header: dta.header,
                    text_content: dta.text_content,
                    img: `${url()}/images/${dta.img}`
                });
            }
        });
    });
});

Router.route('/our_values')
.get((req,res) => {
    res.setHeader('Access-Control-Allow-Origin', '*'); 
    con.connect( err =>{
        const sql = `select  header, sub_header,text_content from about where category="our_values" order by id desc limit 1`;
        con.query(sql, (err1, result)=> {
            if(err1){ res.json({}); }
            else{        
                const dta = result[0];
                res.json({
                    header: dta.header,
                    sub_header: dta.sub_header,
                    text_content:JSON.parse(dta.text_content)
                });
            }
        });
    });
})
.post(authTok, jsonParser, (req, res)=>{
    res.setHeader('Access-Control-Allow-Origin', '*');  
    const data = req.body;
    con.connect( err => {
        const text_string =  JSON.stringify({
            commitment: data.commitment,
            innovation: data.innovation,
            integrity: data.integrity,
            ownership: data.ownership,
            passion: data.passion,
            perserverance: data.perserverance,
            teamwork: data.teamwork,
            transparency: data.transparency
        });
        const sql = `insert into about(category, header,sub_header, text_content) values("our_values","${data.header}","${data.sub_header}",'${text_string}')`;
        //console.log(sql);
        con.query(sql, (err, result) => {
            if(err) {
                res.json({success: 0, message: "Error occurred, try again later!"});
            } else {
                res.json({success: 1, message: "Data saved successfully."});
            }
        });
    });
});

module.exports = Router; 