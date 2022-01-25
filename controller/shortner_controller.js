require('dotenv').config()
const validator = require("../validator/index")

const model = require("../models/url_model")
exports.getLink = async (req, res) => {
    try {
        let count = await model.count({
            where: {
                code: req.body.code
            },
            raw: true,
        })
        if (count == 0) {
            res.send({
                success: false,
                message: "No links available."
            })
        }
        else {
            let data = await model.findOne({
                where: {
                    code: req.body.code
                },
                attributes: ['link'],
                raw: true
            })
            res.send({
                success: true,
                link: data.link
            })
        }
    } catch (error) {
        res.send({
            success: false,
            error: error
        })
    }
}
exports.shorten = async (req, res) => {
    try {
        const result = await validator.url_validator.validateAsync(req.body)
        const available = await model.count({
            where: {
                link: result.url
            },
            raw: true,
        })
        if (available == 0){
            let code = await getCode()
            let d = await model.create({
                code: code,
                link: result.url,
            })
            if (d.dataValues != {}){
                res.send({
                    status: "success",
                    shortened_code: code
                })
            }
        }
        else {
            const data = await model.findOne({
                where: {
                    link: result.url
                },
                raw: true,
                attributes: ['code']
            })
            res.send({
                status: "success",
                shortened_code: data.code
            })
        }
    } catch (error) {
        res.send({
            success: false,
            error: error
        })
    }
}
async function getCode() {
    let r = require('crypto').randomBytes(4).toString('hex')
    let count = await model.count({
        where: {
            code: r
        }
    })
    if (count > 0) {
        getCode()
    }
    else {
        return r
    }
}

exports.check = async (req, res) => {
    try {
        const resp = await validator.url_checker.check_url(req.body.url)
        res.send({
            status: "success",
            security: resp
        })
    } catch (error) {
        res.send({
            success: false,
            error: error
        })
    }
}