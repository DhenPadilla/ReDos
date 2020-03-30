const formatter = {
	// AJV
	ajv: function(str) {
		return {
			type: "object",
			properties: {
				foo: {
					type: "string",
					oneOf: [{ pattern: str }]
				}
			}
		};
	},

	charset: function(str) {
		return "encoding=" + str;
	},

	content_type_parser: function(str) {
		return str + "\r\n";
	},

	content: function(str) {
		return "form-data;x" + str; //disposition()
	},

	debug: function(str) {
		return { test: str };
	},

	dns_sync: function(str) {
		return str + "-";
	},

	forwarded: function(str) {
		return {
			headers: {
				"x-forwarded-for": "x" + str + "x"
			},
			connection: {
				remoteAddress: "0.0.0.0"
			}
		};
	},

	fresh: function(str) {
		return (
			{
				"if-none-match": str + "x"
			},
			{
				etag: 23
			}
		);
	},

	htmlparser: function(str) {
		return "<html><x" + str + "x></html>";
	},

	ismobilejs: function(str) {
		return str;
	},

	lodash: function(str) {
		return str;
	},

	marked: function(str) {
		return str;
	},

	mime: function(str) {
		return str + "";
	},

	mobile_detect: function(str) {
		return str;
	},

	moment: function(str) {
		return str;
	},

	no_case: function(str) {
		return str;
	},

	parsejson: function(str) {
		return '{"a":"' + str + '"}';
	},

	platform: function(str) {
		return "Windows Icarus6j" + str + " ";
	},

	slug: function(str) {
		return "♥" + str + "♥";
	},

	string: function(str) {
		return str;
	},

	tough_cookie: function(str) {
		return "x" + str + "x";
	},

	timespan: function(str) {
		return "NOW-" + str + "milli";
	},

	underscore_string: function(str) {
		return str;
	}
};

export default formatter;