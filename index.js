let http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello! This is my first DevOps Project');
}).listen(3000);

console.log("Server is running at 3000")