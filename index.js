import express from "express";
import bodyParser from "body-parser";

var app = express();
// Parse incoming requests data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
const contentTypeParser = require("content-type-parser");

// const utils = require("./utils").measureTime;

import utils from "./utils";
var measureTime = utils.measureTime;


import Ajv from "ajv";
var ajv = new Ajv; 
var charset = require('charset');
const content = require("content");
var debug = require('debug');
var dns = require('dns-sync');
var forward = require('forwarded');
var fresh = require('fresh');
var htmlparser = require("htmlparser");
var ismobilejs = require('ismobilejs');
var lod = require('lodash');
var marked = require('marked');


import formatter from "./formatter";

const PORT = 3000;
app.listen(PORT, () => {
 console.log(`Server running on port ${PORT}`);
});


app.post("/ajv/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.ajv(req.body.title);
    var time_taken = measureTime(ajv.compile(inp)); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
        inp,
      });
})

app.post("/ajv/mitigation", (req, res) => {
    // Add mitigation for ajv here.
})


app.post("/charset/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.charset(req.body.title);
    var time_taken = measureTime(function (){ charset(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/content-type-parser/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.content_type_parser(req.body.title);
    var time_taken = measureTime(function (){contentTypeParser(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/content/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.content_type_parser(req.body.title);
    var time_taken = measureTime(function (){content.disposition(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/debug/dos", (req, res, next) => {
    process.env.DEBUG = "*";
    var error = debug('app:error');
    error.log = function () {
    };
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.debug(req.body.title);
    var time_taken = measureTime(function (){error('x %o', inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/debug/dos", (req, res, next) => {
    process.env.DEBUG = "*";
    var error = debug('app:error');
    error.log = function () {
    };
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.debug(req.body.title);
    var time_taken = measureTime(function (){error('x %o', inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/dns-sync/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.dns_sync(req.body.title);
    var time_taken = measureTime(function (){dns.resolve(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/forwarded/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.forwarded(req.body.title);
    var time_taken = measureTime(function (){forward(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})


app.post("/fresh/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.fresh(req.body.title);
    var time_taken = measureTime(function (){fresh(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/htmlparser/dos", (req, res, next) => {
    var handler = new htmlparser.DefaultHandler(function (error, dom) {
    });
    var parser = new htmlparser.Parser(handler);

    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.htmlparser(req.body.title);
    var time_taken = measureTime(function (){parser.parseComplete(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/ismobilejs/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.ismobilejs(req.body.title);
    var time_taken = measureTime(function (){ismobilejs(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/lodash/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.lodash(req.body.title);
    var time_taken = measureTime(function (){lod.lowerCase(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})

app.post("/marked/dos", (req, res, next) => {
    if(!req.body.title) {
        return res.status(400).send({
          success: 'false',
          message: 'title is required'
        });
      }
    var inp = formatter.marked(req.body.title);
    var time_taken = measureTime(function (){marked(inp)}); 
    return res.status(200).send({
        success: 'true',
        message: 'Post Request works!',
        time_taken,
      });
})



















