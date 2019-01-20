import sys
import json

jsonData = sys.argv[1]
#print sys.argv[1]

json_array = json.loads(jsonData)

pids =""
#print "parsing each item"
for item in json_array['process-instance']:
	pids +=  str(item['process-instance-id'])
	pids+=","

print pids


