import sys
import json

jsonData = sys.argv[1]
#print "in capture status"
#print sys.argv[1]
selectedRid = sys.argv[2]
#print selectedRid

json_array = json.loads(jsonData)

if(selectedRid == json_array['permitRequest']['com.rhpoc.solar_village.PermitRequest']['requestId']):
	print "RequestId: " + json_array['permitRequest']['com.rhpoc.solar_village.PermitRequest']['requestId']
	print "Name :" + json_array['name']
	print "ElectricAppId :" + json_array['electricAppId']
	print "electricStatus :" + json_array['electricStatus']
	print "structuralAppId  :" + json_array['structuralAppId']
	print "electricStatus :" + json_array['structuralStatus']






