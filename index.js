var express = require("express");
var app = express();

app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/url", (req, res, next) => {
    res.json("Hello World!");
})

function format_ajv(str){
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
    };
}

function format_charset(str){
    return "encoding=" + str;
}

function format_content_type_parser(str){
    return str + "\r\n";
}

function format_content(str){
    return "form-data;x" + str; //disposition()
}

function format_debug(str){
    return {"test": str};
}

function format_dns_sync(str){
    return str + "-";
}

function format_forwarded(str){
    return {
        "headers": {
            "x-forwarded-for": "x" + str + "x"
        },
        "connection": {
            "remoteAddress": "0.0.0.0"
        }
    };
}

function format_fresh(str){
    return {
        "if-none-match": str + "x"
    }, {
        "etag": 23
    };
}

function format_htmlparser(str){
    return  "<html><x" + str + "x></html>";
}

function format_ismobilejs(str){
    return str;
}

function format_lodash(str){
    return str;
}

function format_marked(str){
    return str;
}

function format_mime(str){
    return str + "";
}

function format_mobile_detect(str){
    return str;
}

function format_moment(str){
    return str;
}

function format_no_case(str){
    return str;
}

function format_parsejson(str){
    return "{\"a\":\"" + str + "\"}";
}

function format_platform(str){
    return 'Windows Icarus6j' + str + " ";
}

function format_slug(str){
    return '♥' + str + '♥';
}

function format_string(str){
    return str;
}

function format_though_cookie(str){
    return "x" + str + "x";
}

function format_timespan(str){
    return "NOW-" + str + "milli";
}

function format_underscore_string(str){
    return str;
}