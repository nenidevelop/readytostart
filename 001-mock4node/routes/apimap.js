module.exports = function (app) {
    app.get("/api/map", function (req, res) {
        res.json({
            "content": "MOCK API REST",
            "_links": {
                "Contrat.findContract": {
                    "href": "http://localhost:8081/api/composants/contrats/{identifiantContrat}",
                    "templated": true
                },
                "Customer.controlEligible": {
                    "href": "http://localhost:8081/api/composants/customer/{clientId}",
                    "templated": true
                },
                "Customer.oppose": {
                    "href": "http://localhost:8081/api/composants/customer/{clientId}/oppose",
                    "templated": true
                },
                "self": {
                    "href": "http://localhost:8081/api/map"
                }
            }
        });
    })
};