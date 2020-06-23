#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=10cefsWO8R_QCuu1sJQVxXd5lMDQHcsWS" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=10cefsWO8R_QCuu1sJQVxXd5lMDQHcsWS" -o l_openvino_toolkit_runtime_raspbian_p_2020.2.120.tgz

sudo rm -rf /opt/intel/openvino
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2020.2.120.tgz --strip 1 -C /opt/intel/openvino
rm l_openvino_toolkit_runtime_raspbian_p_2020.2.120.tgz
