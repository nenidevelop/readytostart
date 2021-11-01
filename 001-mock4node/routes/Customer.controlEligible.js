module.exports = function (app) {
    app.put("/api/composants/customer/:clientId", function (req, res) {

        res.json({
            "isCustomerEligible": true
        });
    });
};