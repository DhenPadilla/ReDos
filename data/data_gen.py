import json

def gen_string(pattern, number):
    return str(pattern) * number

with open("markeddosdata.json", "w") as outfile:
    value = gen_string('`', 8) + gen_string(' ', 700) + gen_string('`', 11)
    data = {"title": value}
    json.dump(data, outfile)