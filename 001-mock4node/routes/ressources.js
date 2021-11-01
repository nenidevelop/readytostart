var express = require('express');

module.exports = function (app) {
    app.use('/ressources', express.static(__dirname + '/../ressources'));
};