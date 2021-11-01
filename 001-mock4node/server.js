var express = require('express'),
    bodyParser = require('express'),
    morgan = require('morgan'),
    routes = require('./routes.js');

var app = express();
app.use(morgan('combined'));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

port = process.env.PORT || 8081;

routes(app);

var server = app.listen(port, function() {
    console.log('Mock server running on port ', server.address().port);
});
