const http = require('http');
const express = require('express');
const getSQLInsertConnection = require("./insertProcessor");
const getSQLSelectConnection = require('./getSQLProcessor');
var queryInsert = new getSQLInsertConnection();
var querySelect = new getSQLSelectConnection();
const app = express();
const bodyParser = require('body-parser');
//how to use select statement.  Results are within function and can be saved with a exterior variable.
/*
querySelect.getAllEmployeeInfo(function(err, result) {
  if(err) throw err;
  console.log(result);//stores results of query,  Do everything you must within this bracket
});
*/
//hey Evan connection works, using objects this is how you would do it for each request:
//queryInsert.createEmployeeCredentials("KevGuy", 123456 , "kevin","linnane","admin","kevin@gmail.com", "M");
//queryInsert.insertAvailabilityForNull("kevin", "linnane", "3", "01:30:00", "09:20:00" );
//queryInsert.updateAvailability("kevin", "linnane", "3", "05:30:00", "04:20:00");

