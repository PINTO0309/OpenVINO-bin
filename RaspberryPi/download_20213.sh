#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1erARBYZI302LOswIifrVQ_fBbBkx_pQG" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1erARBYZI302LOswIifrVQ_fBbBkx_pQG" -o l_openvino_toolkit_runtime_raspbian_p_2021.3.394.tgz

sudo rm -rf /opt/intel/openvino
sudo mkdir -p /opt/intel/openvino
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2021.3.394.tgz --strip 1 -C /opt/intel/openvino
rm l_openvino_toolkit_runtime_raspbian_p_2021.3.394.tgz
