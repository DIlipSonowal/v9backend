const express = require('express'); 
const Router = express.Router(); 
const authTok = require('../jwt');
const bodyParser = require("body-parser");
const con = require('../../database/db');
var jsonParser = bodyParser.json();
app = express();
app.use(bodyParser.json());
app.use(express.json());

Router.route('/country') 
.get((req, res) => {
    const data = req.body;
    const sql = `select * from country`;
    con.connect( err => {
        con.query(sql, (err1, result) => {
            res.json(result);
        });
    });
});
   
Router.route('/state') 
.post((req, res) => {
    const data = req.body;
    const sql = `select country_id, state_name from state where country_id=${data.id}`;
    con.connect( err => {
        con.query(sql, (err1, result) => {
            //console.log(result);
            res.json(result);
        });
    });
});

Router.route('/project') 
.get(authTok,(req, res) => {
    // const data = req.body;
    //const sql = `select * from project`;
    const sql = `select p.proj_id, p.proj_name, p.budjet, p.customer_name, p.organization_name, p.organization_address, c.country_name, s.state_name, p.customer_city, p.product_type, p.Proj_subject, p.proj_desc, p.author, p.due_dt, p.start_dt, p.cost_of_proj, p.priority, p.task_type from project as p inner join country as c on p.customer_cuntry = c.id inner join state as s on p.customer_state = s.id`;
    con.connect( err => {
        con.query(sql, (err1, result) => {
            res.json(result);
        });
    });
})
.post(authTok, jsonParser, (req, res) => {
    const data = req.body;
    const sql = `insert into project(proj_id, proj_name, budjet, customer_name, organization_name, organization_address, customer_cuntry, customer_state, customer_city, product_type, Proj_subject, proj_desc, author, due_dt, start_dt, cost_of_proj, priority, task_type) values("${Date.now()}","${data.proj_name}", ${data.budjet}, "${data.customer_name}", "${data.organization_name}", "${data.organization_address}", ${data.customer_cuntry}, ${data.customer_state}, "${data.customer_city}", "${data.product_type}", "${data.Proj_subject}", "${data.proj_desc}", "${data.author}", "${data.due_dt}", "${data.start_dt}", ${data.cost_of_proj}, "${data.priority}", "${data.task_type}")`;
    con.connect( err => {
        con.query(sql, (err1, result) => {
           // console.log("==>", sql);          
           if(err1) {
                res.json({success: 0, message: "Error occurred, try again!"});
           } else{
                res.json({success: 1, message: "Data saved sussessfully."});
           }
        });
    });
});


module.exports = Router; 