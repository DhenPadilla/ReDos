import json

def gen_string(pattern, number):
    return str(pattern) * number

with open("ismobilejsdata.json", "w") as outfile:
    value = gen_string(' ', 20000)
    data = {"title": value}
    json.dump(data, outfile)