#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1c1zaAeWMXom0gq9EzNWgro4XQKHlGPyZ" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1c1zaAeWMXom0gq9EzNWgro4XQKHlGPyZ" -o l_openvino_toolkit_runtime_raspbian_p_2021.4.582.tgz

sudo rm -rf /opt/intel/openvino
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2021.4.582.tgz --strip 1 -C /opt/intel/openvino
rm l_openvino_toolkit_runtime_raspbian_p_2021.4.582.tgz
