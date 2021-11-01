var customerOpposeResponse = require("./Customer.oppose.json");

module.exports = function (app) {
    app.post("/api/composants/customer/:clientId/oppose", function (req, res) {

        // 200
        res.json(customerOpposeResponse);

    });
};