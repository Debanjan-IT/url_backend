const expr = require('express');
let router = expr.Router();
const controller = require('../controller/shortner_controller')


router.route("/check")
    .post(controller.check)
router.route("/shorten")
    .post(controller.shorten)
router.route("/get_link")
    .post(controller.getLink)

module.exports = router;