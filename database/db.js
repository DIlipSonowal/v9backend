const mysql = require('mysql');

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "v9"
  });

//   const conStatus = con.connect( (err) => {
//       if (err) throw err;  
//       return con;
//       console.log('connected...');
//      // return con;
//   });

  module.exports = con;