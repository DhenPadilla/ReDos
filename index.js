var express = require("express");
var app = express();

const utils = require("./utils").measureTime;

var charset = require('charset');
var Ajv = require('ajv');
var ajv = new Ajv;


app.listen(3000, () => {
 console.log("Server running on port 3000");
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
    var inp = format_ajv(req.body.title);
    var time_taken = measureTime(ajv.compile(inp)); 
    res.json(time_taken);
})


app.post("/ajv/mitigation", (req, res) => {
    // Add mitigation for ajv here.
})