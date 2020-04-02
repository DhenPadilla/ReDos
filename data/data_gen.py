import json

def gen_string(pattern, number):
    return str(pattern) * number

with open("freshdosdata.json", "w") as outfile:
    value = gen_string(' ', 60000)
    data = {"title": value}
    json.dump(data, outfile)