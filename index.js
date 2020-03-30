import express from "express";
import db from "./db/db";
import bodyParser from "body-parser";

var app = express();
// Parse incoming requests data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// const utils = require("./utils").measureTime;

import utils from "./utils";
var measureTime = utils.measureTime;

import charset from "charset";
import Ajv from "ajv";
var ajv = new Ajv;

const PORT = 3000;
app.listen(PORT, () => {
 console.log(`Server running on port ${PORT}`);
});

// AJV 
var format_ajv = function(str) {
    return {
        "type": "object",
        "properties": {
            "foo": {
                "type": 'string',
                "oneOf": [
                    {"pattern": str}
                ]
            }
        }
    }
}

app.post("/ajv/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = format_ajv(req.body.title);
    var time_taken = measureTime(ajv.compile(inp)); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})


app.post("/ajv/mitigation", (req, res) => {
    // Add mitigation for ajv here.
})