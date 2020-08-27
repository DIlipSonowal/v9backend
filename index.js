require('dotenv').config();
var express = require('express');
const path = require("path") ;
var https = require('https');
var http = require('http');
var app = express();
var cors = require('cors');
const bodyParser = require("body-parser");

var jsonParser = bodyParser.json();
const jwt = require('jsonwebtoken');
app.use(bodyParser.json(), cors());
app.use(express.json());
const con = require('./database/db');

const login = require('./app/login');
const home = require('./app/modules/home');
const common = require('./app/modules/common');
const task = require('./app/task');

app.use('/login', login);
app.use('/home', home);
app.use('/common', common);
app.use('/task', task);

const authTok = require('./app/jwt');
const maxSize = 2 * 1000 * 1000; 
var multer  = require('multer');
//============================================
var storage = multer.diskStorage({ 
    destination: function (req, file, cb) { 
        cb(null, "uploads") 
    }, 
    filename: function (req, file, cb) { 
      //  console.log(`.${file.mimetype.split('/')[1]}`);
      cb(null, Date.now()+`.${file.mimetype.split('/')[1]}`) 
    } 
}) 
var upload = multer({ 
    storage: storage, 
    dest: 'uploads/',
    limits: { fileSize: maxSize }, 
    fileFilter: function (req, file, cb){   
        // Set the filetypes, it is optional 
        var filetypes = /jpeg|jpg|png|gif/; 
        var mimetype = filetypes.test(file.mimetype); 
        
        var extname = filetypes.test(path.extname( 
                    file.originalname).toLowerCase()); 
        
        if (mimetype && extname) { 
            return cb(null, true); 
        } 
      
        cb("Error: File upload only supports the "
                + "following filetypes - " + filetypes); 
    }  
}).single('user_photo');
//===========================================

var storage1 = multer.diskStorage({ 
    destination: function (req, file, cb) { 
        cb(null, "top_slider") 
    }, 
    filename: function (req, file, cb) { 
      //  console.log(`.${file.mimetype.split('/')[1]}`);
      cb(null, Date.now()+`.${file.mimetype.split('/')[1]}`) 
    } 
}) 
var upload1 = multer({ 
    storage: storage1, 
    dest: 'top_slider/',
    limits: { fileSize: maxSize }, 
    fileFilter: function (req, file, cb){   
        // Set the filetypes, it is optional 
        var filetypes = /jpeg|jpg|png|gif/; 
        var mimetype = filetypes.test(file.mimetype); 
        
        var extname = filetypes.test(path.extname( 
                    file.originalname).toLowerCase()); 
        
        if (mimetype && extname) { 
            return cb(null, true); 
        } 
      
        cb("Error: File upload only supports the "
                + "following filetypes - " + filetypes); 
    }  
}).single('files');
//===============================================

var storage2 = multer.diskStorage({ 
    destination: function (req, file, cb) { 
        cb(null, "images/") 
    }, 
    filename: function (req, file, cb) { 
      //  console.log(`.${file.mimetype.split('/')[1]}`);
      cb(null, Date.now()+file.originalname) 
    } 
}) 
var upload2 = multer({ 
    storage: storage2 
});
//===========Create employee=====================
app.post('/home/createEmployee', authTok, jsonParser, (req, res)=> {   
    upload(req,res,function(err) {  
        //console.log("==>>",req.body);
        
        const resObj = { success: [], error:[], message:[] };
        const data = req.body;
        const file_name = req.file.filename;
        //console.log("file", req.file);
        con.connect( (err0)=> {
        con.query("select max(id) as max from user_data", (err00, result)=> {
            let id = 1 + result[0].max;   
            //console.log("result1", id);       
                const sql = `insert into user_data(id, user_type, f_name, m_name, l_name, password, country_id, state_id, city_id, pin_code, post_office, address) values (${id},"${data.user_type}","${data.f_name}","${data.m_name}","${data.l_name}","${data.password}",${data.country_id},${data.state_id},${data.city_id},"${data.pin_code}","${data.post_office}","${data.address}")`;
                con.query(sql, (err000, result1)=>{
                    //console.log("result2",sql);
                    if(err000) {
                        resObj.error.push("Data not added to user_table");
                    }
                    else {
                        //console.log(result[0]);
                        //res.json(result[0]);
                        resObj.success.push("Data added to user_table"); 
                        //console.log("resObj",resObj);
                        const sql1 = `insert into email(user_id, email_id) values(${id},"${data.email}")`;
                        con.query(sql1, (err1, result1) => {
                        if(err1){
                            resObj.error.push("Data not added to email");
                            con.query(`delete from user_data where id=${id}`, (e,r) => {});
                        } else {
                            resObj.success.push("Data added to email"); 
                            const sql2 = `insert into mobile_number(user_id, mob_number) values (${id},"${data.mob_number}")`;
                            con.query(sql2, (err2, result2) => {
                                if(err2) {
                                    resObj.error.push("Data not added to mobile"); 
                                    con.query(`delete from user_data where id=${id}`, (e,r) => {});
                                    con.query(`delete from email where user_id = ${id}`, (e,r) => {});
                                } else {
                                    if(err) { 
                                        resObj.error.push("Image did not added."); 
                                    } 
                                    else { 
                                        resObj.success.push("Image added to against user"); 
                                    } 
                                    resObj.success.push("Data added to email"); 
                                    resObj.message.push("User added successfully"); 
                                    con.query(`insert into user_photo(user_id, image) values(${id}, "${file_name}")`, (e,r) => {});
                                    res.json(resObj);
                                }
                            });
                        }
                    });
                    }
                })
            });
        })
        
      
        //console.log(req.body);
        
    }) 
});

app.post('/our_goals', authTok, jsonParser, upload2.array('images',2), (req, res) => {
   // upload2(req,res,function(err) {   
        res.setHeader('Access-Control-Allow-Origin', '*');  
        const resObj = { success: [], error:[], message:[] };
        const data = req.body;
        let file_name = [];
         req.files.forEach( (f,i)=> {           
            file_name.push(f.filename);
        });
        const imga = file_name.join(',');
        //console.log("file", req.files);
        //res.json(data);
        con.connect( (err0)=> {  
                const sql = `insert into home(category, sub_header, header, text_content, img) values ("our_goals","${data.sub_header}","${data.header}","${data.text_content}","${imga}")`;
                //console.log(sql);
                con.query(sql, (err000, result1)=>{
                    //console.log("result2",sql);
                    if(err000) {
                        resObj.error.push("Data not added, try again");
                    }
                    else {
                        resObj.success.push("Data added to Our goal section...");         
                        resObj.message.push("Data added successfully...");              
                    }
                    res.json(resObj);
                });
        });            
});

app.post('/top_slider', authTok, jsonParser, (req,res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    upload1(req,res,function(err) {     
        
        const resObj = { success: [], error:[], message:[] };
        const data = req.body;
        const file_name = req.file.filename;
        console.log("file", data);
        con.connect( (err0)=> {  
                const sql = `insert into home(category, sub_header, header, text_content, img) values 
                ("top_slider","${data.sub_header}","${data.header}","${data.text_content}","${file_name}")`;
                //console.log(sql);
                con.query(sql, (err000, result1)=>{
                    //console.log("result2",sql);
                    if(err000) {
                        resObj.error.push("Data not added to top slider, try again");
                    }
                    else {
                        resObj.success.push("Data added to top slider...");         
                        resObj.message.push("Data added successfully...");              
                    }
                    res.json(resObj);
                })
        })              
    })
});

app.listen(8000, ()=>{
    console.log("server is up at 8000");
});
