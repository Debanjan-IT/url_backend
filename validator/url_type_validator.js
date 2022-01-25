const Joi = require('joi');

const urlSchema = Joi.object({
    url: Joi.string().lowercase().required()
});


module.exports = urlSchema;