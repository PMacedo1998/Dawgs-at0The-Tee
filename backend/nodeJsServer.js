const http = require('http');
const getSQLInsertConnection = require("./insertProcessor");
const getSQLSelectConnection = require('./getSQLProcessor');
var queryInsert = new getSQLInsertConnection();
var querySelect = new getSQLSelectConnection();
//this is how to use select statement.  Results are within function and can be saved with a exterior variable.
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
http.createServer((request, response) => {

   // Website you wish to allow to connect
    response.setHeader('Access-Control-Allow-Origin', 'http://localhost:4200');

    // Request methods you wish to allow
    response.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

     // Request headers you wish to allow
    response.setHeader('Access-Control-Allow-Headers', 'CONTENT-TYPE');


  const { headers, method, url } = request;
  let body = [];
  request.on('error', (err) => {
    console.error(err);
    }).on('data', (chunk) => {
      body.push(chunk);
    }).on('end', () => {
      body = Buffer.concat(body).toString();
      // At this point, we have the headers, method, url and body, and can now
      // do whatever we need to in order to respond to this request.

      //BEGINNING OF NEW STUFF

      response.on('error', (err) => {
        console.error(err);
      });

      response.statusCode = 200;
      response.setHeader('Content-Type', 'application/json');
      // Note: the 2 lines above could be replaced with this next one:
      // response.writeHead(200, {'Content-Type': 'application/json'})

      const responseBody = { headers, method, url, body };

      response.write(JSON.stringify(responseBody));
      response.end();
      // Note: the 2 lines above could be replaced with this next one:
      // response.end(JSON.stringify(responseBody))

      // END OF NEW STUFF

      var vals = JSON.stringify(body);
      var valsObj = JSON.parse(vals);

      console.log("valsObj: ", valsObj);




    });
  }).listen(3000); // Activates this server, listening on port 8080.
