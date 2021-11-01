module.exports = function (app) {
    app.get("/api/composants/contrats/:identifiantContrat", function (req, res) {

        var idContract = req.params.identifiantContrat;

        var jsonResponse = {
            "detailContract": {
                "idContrat": {
                },
                "codeProgrammeBranding": "0000",
                "numeroContract": "4970405062873236",
                "isLocked": false,
                "dateEndContract": 1756546644000,
                "product": {
                    "idProduct": null,
                    "idProduitTechnical": {
                        "code": "00009"
                    }
                }
            }
        };

        res.json(jsonResponse);
    });
};