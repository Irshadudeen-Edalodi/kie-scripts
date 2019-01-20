while [ 1 ]
do

	response=$(curl -s -X POST  -u 'jboss:jboss' -H 'Content-type: application/json' -H 'X-KIE-ContentType: JSON' --data '' 'http://localhost:8080/kie-server/services/rest/server/containers/Solar_village_1.0.23/processes/instances/signal/STARTELECTRICSTATUSCHECK')
	#echo "$response" 
	response=$(curl -s -X POST  -u 'jboss:jboss' -H 'Content-type: application/json' -H 'X-KIE-ContentType: JSON' --data '' 'http://localhost:8080/kie-server/services/rest/server/containers/Solar_village_1.0.23/processes/instances/signal/STARTSTRUCTURALSTATUSCHECK')

	sleep 30
done
