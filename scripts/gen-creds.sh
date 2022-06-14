#!/bin/bash

cd $HOME/certs
cert=`ls *-cert*`
priv=`ls *-priv*`
sed -z 's/\n/\\n/g;s/\\n$/\n/' $cert > cert.str
sed -z 's/\n/\\n/g;s/\\n$/\n/' $priv > priv.str
certstr=`cat cert.str`
privstr=`cat priv.str`
cat << EOF > config-creds.sh
export MQTT_BROKER_ENDPOINT=<Endpoint>-ats.iot.us-east-1.amazonaws.com
export IOT_THING_NAME=<ThingName>
export CLIENT_CERTIFICATE_PEM="$certstr"
export CLIENT_PRIVATE_KEY_PEM="$privstr"
EOF
