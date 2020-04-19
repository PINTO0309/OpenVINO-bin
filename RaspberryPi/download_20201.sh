#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=17tx2lEyfcC1vl-fxDNqeb5o-mGRobU4W" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=17tx2lEyfcC1vl-fxDNqeb5o-mGRobU4W" -o l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz

sudo rm -rf /opt/intel/openvino
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz --strip 1 -C /opt/intel/openvino
rm l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz
