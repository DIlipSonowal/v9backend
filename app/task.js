const express = require('express'); 
const Router = express.Router(); 
const bodyParser = require("body-parser");
const con = require('../database/db');
const authTok = require('./jwt');
app = express();
var jsonParser = bodyParser.json();
const jwt = require('jsonwebtoken');
app.use(bodyParser.json());
app.use(express.json());

Router.route('/allocate_project').post(authTok, jsonParser, (req, res) => {
    //console.log(con);
    const data = req.body;
    let arr = [];

    let date_ob = new Date();
    let date = ("0" + date_ob.getDate()).slice(-2);
    let month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
    let year = date_ob.getFullYear();
    
    data.emp_ids.forEach( (eid) => {
        const sdt = eid.start_dt? eid.start_dt: `${year}-${month}-${date}`;
        arr.push(`("${data.proj_id}",${eid.emp_id},"${sdt}","${eid.allocation_pc}")`);
    });
    console.log(`${arr.join(',')}`);
    const sql = `insert into allocate_project (proj_id, emp_id, start_dt,allocation_pc) values ${arr.join(',')}`;
    //console.log(arr.join(','));
    con.connect( (err) => {
        con.query(sql, (err, result) =>{
            if(err) {
                res.json({success:0, message:"Unable to allocate project, try again!!"});
            } else {
                res.json({success:1, message:"Project allocated successfully..."});
            }
        });
    });
});

Router.route('/deallocate_project').post(authTok, jsonParser, (req, res) => {
    //console.log(con);
    const data = req.body;

    let date_ob = new Date();
    let date = ("0" + date_ob.getDate()).slice(-2);
    let month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
    let year = date_ob.getFullYear();
    const enddt = data.end_dt? data.end_dt: `${year}-${month}-${date}`;

    const sql = `update allocate_project set end_dt="${enddt}", comments="${data.comments}" where proj_id="${data.proj_id}" AND emp_id=${data.emp_id}`;
    console.log(sql);
    con.connect( (err) => {
        con.query(sql, (err, result) => {
            if(err) {
                res.json({success:0, message:"Unable to deallocate from the project, try again!!"});
            } else {
                res.json({success:1, message:"Deallocated from the project successfully..."});
            }
        });
    });
});

Router.route('/tasks')
.get(authTok, jsonParser, (req, res) => {

})
.post(authTok, jsonParser, (req, res) => {
    
});

module.exports = Router;