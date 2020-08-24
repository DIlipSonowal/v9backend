const express = require('express'); 
const Router = express.Router(); 
const bodyParser = require("body-parser");
const con = require('../database/db');
app = express();
var jsonParser = bodyParser.json();
const jwt = require('jsonwebtoken');
app.use(bodyParser.json());
app.use(express.json());

Router.route('/').post(jsonParser, (req, res, next) =>{
   //console.log(con);
    const data = req.body;
    const user_id  = data.user_name;
    const password = data.password;   

    con.connect( (err) => {
        //if (err) throw err;         
        const sql = `select ud.id, ud.user_type, ud.f_name, ud.l_name, ud.address, e.email_id, mn.mob_number from user_data as ud, email as e, mobile_number as mn where ud.password="${password}" AND (e.email_id="${user_id}" OR mn.mob_number="${user_id}")`;
        // console.log(sql);
        con.query(sql, (err, result) => {
            if (err) {
                res.json({success: 0, statusCode:404, message: "Error occurred, try again!"});
            }
            else if(result.length) {
                const accessToken = jwt.sign(user_id, process.env.ACCESS_TOKEN_SECRET);
                res.json({success: 1, statusCode:200, jwt : accessToken, data: { id:result[0].id, user_type: result[0].user_type, f_name: result[0].f_name, l_name: result[0].l_name, email: result[0].email_id, mobile: result[0].mob_number, address: result[0].address} });
            } else {
                res.json({success: 0, statusCode:201, message: "User not found"});
            }
        });       
    });
});

module.exports = Router;