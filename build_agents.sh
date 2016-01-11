#!/bin/sh
i=$1
docker run -d --net=host --restart=always --name=agent${i} -v /root/ucd-agents/agent${i}/var:/opt/ibm-ucd/agent/var  -v /root/ucd-agents/agent${i}/agent:/opt/ibm-ucd/agent/conf/agent dockerhub-dev.ccs.ibmcloud.com:5000/ucd-agent:1.2
exit 0
