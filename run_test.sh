#!/bin/bash

apk -U add wget ca-certificates
mkdir /tmp/cast-out/
cd /tmp/cast-out/
wget https://raw.githubusercontent.com/galaxyproject/tools-iuc/master/tools/reshape2/test-data/melt_result1.tabular

cast.R -i melt_result1.tabular

# check that files were created
if ! [ -e "/tmp/cast-out/output.tabular" ]; then
	echo "Output tabular file doesn't exist"
	exit 1
fi

echo "All files created successfully"