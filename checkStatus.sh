piResponse=$(curl -s -u 'jboss:jboss' -H 'Accept: application/json' 'http://localhost:8080/kie-server/services/rest/server/containers/Solar_village_1.0.23/processes/instances')
#echo "in shell"
#echo $piResponse

pids=$(python capture_process_instances.py "$piResponse")
#echo "pids $pids"

read -p "Enter requestId :" selectedRid 

IFS=',' read -r -a pidsArray <<< "$pids"

#echo "pidsarr $pidsArray"


for pid in "${pidsArray[@]}"
do
	#echo "$pid"
	response=$(curl -s -u 'jboss:jboss' -H 'Accept: application/json' 'http://localhost:8080/kie-server/services/rest/server/containers/Solar_village_1.0.23/processes/instances/'"$pid"'/variables')
	#echo "$response"
	python capture_status.py "$response" "$selectedRid"
done
