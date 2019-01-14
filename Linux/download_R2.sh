#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1NV-oOxxsc8B0vMC9p4XBv0JGMNJcypZ_" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1NV-oOxxsc8B0vMC9p4XBv0JGMNJcypZ_" -o l_openvino_toolkit_p_2018.2.300.tgz
tar -zxvf l_openvino_toolkit_p_2018.2.300.tgz
rm l_openvino_toolkit_p_2018.2.300.tgz

