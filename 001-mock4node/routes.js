module.exports = function (app) {
    app.get("/", function (req, res) {
        res.status(418).send("I am a teapot");
    });

    require('./routes/apimap')(app);
    require('./routes/ressources')(app);

    require('./routes/Contrat.findContract')(app);
    require('./routes/Customer.controlEligible')(app);
    require('./routes/Customer.oppose')(app);


};