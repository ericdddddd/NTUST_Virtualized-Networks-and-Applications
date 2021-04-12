curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000003 -d @./test_1.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000003 -d @./test_1r.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000004 -d @./test_2.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000004 -d @./test_2r.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000003 -d @./test_1arp.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000004 -d @./test_2arp.json --user onos:rocks

curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000005 -d @./test_3.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000005 -d @./test_3r.json --user onos:rocks
curl -X POST -H "content-type:application/json" http://localhost:8181/onos/v1/flows/of:0000000000000005 -d @./test_3arp.json --user onos:rocks
echo -e "finish add_rules.sh! \a \n"
