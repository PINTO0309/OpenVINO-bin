#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1Ktm2HpBExp6LAqwr7xl7oqzQJZT73v0R" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1Ktm2HpBExp6LAqwr7xl7oqzQJZT73v0R" -o l_openvino_toolkit_runtime_raspbian_p_2019.2.242.tgz

sudo rm -rf /opt/intel/openvino
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2019.2.242.tgz --strip 1 -C /opt/intel/openvino
rm l_openvino_toolkit_runtime_raspbian_p_2019.2.242.tgz

