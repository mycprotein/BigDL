#!/bin/bash
cd /ppml/trusted-big-data-ml
export spark_commnd="python ./work/examples/helloworld.py"
gramine-sgx bash 2>&1 | tee test-helloworld-sgx.log
cat test-helloworld-sgx.log | egrep -a "Hello"
