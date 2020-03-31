import json

def gen_string(pattern, number):
    return str(pattern) * number

with open("markeddata.json", "w") as outfile:
    value = gen_string('a', 719)
    data = {"title": value}
    json.dump(data, outfile)