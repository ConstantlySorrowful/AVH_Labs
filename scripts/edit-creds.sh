#!/bin/bash

source $HOME/certs/config-creds.sh 
cd $HOME/AVH_Demo/amazon-freertos/demos/include
envsubst <aws_clientcredential.h.in >aws_clientcredential.h
envsubst <aws_clientcredential_keys.h.in >aws_clientcredential_keys.h
