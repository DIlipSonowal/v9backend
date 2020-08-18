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
        if (err) throw err;  
        const sql = `select * from user_data where (email = "${user_id}" OR mobile="${user_id}") AND password="${password}"`;
        // const sql = `select * from user_data`;
        console.log(sql);
        con.query(sql, (err, result) => {
            if (err) throw err;
            console.log("result",result[0]);
            if(result.length){
                const accessToken = jwt.sign(user_id, process.env.ACCESS_TOKEN_SECRET);
                res.json({jwt : accessToken, data: { id: result[0].id, user_type: result[0].user_type, f_name: result[0].f_name, l_name: result[0].l_name, email: result[0].email, mobile: result[0].mobile} });
            } else {
                res.sendStatus(401);
            }
        });
        
    });
});

module.exports = Router;