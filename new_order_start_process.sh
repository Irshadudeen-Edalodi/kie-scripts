echo "========= Solar Village ========"
read -p "Enter Request Id: " requestId
read -p "Enter Name: " name
read -p "Enter address: " address
read -p "Enter area(sq.km): " area
read -p "Enter email: " email


response=$(curl -s -X POST  -u 'jboss:jboss' -H 'Content-type: application/json' -H 'X-KIE-ContentType: JSON' --data '{  "permitRequest" : { "com.rhpoc.solar_village.PermitRequest": { "requestId": "'"$requestId"'" ,"name": "'"$name"'" ,"address": "'"$address"'" ,"area": "'"$area"'" ,"email": "'"$email"'" } } }' 'http://localhost:8080/kie-server/services/rest/server/containers/Solar_village_1.0.23/processes/Solar_village.req-permit/instances')
echo started process with ID $response

echo "=================" >> SolarVillageNewOrders.txt
echo "pId         : " $response >> SolarVillageNewOrders.txt
echo "Request id  :" $requestId >> SolarVillageNewOrders.txt
echo "name        :" $name 	>> SolarVillageNewOrders.txt
echo "address	  :" $address	>> SolarVillageNewOrders.txt
echo "area        :" $area	>> SolarVillageNewOrders.txt
echo "email       :" $email	>> SolarVillageNewOrders.txt
echo "===================" 

