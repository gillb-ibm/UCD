#!/bin/bash
for i in `seq --format %g $1 $2`
do
	echo ${3} agent$i...
        docker $3 agent$i
done
