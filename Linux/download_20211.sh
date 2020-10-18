#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1pi_cOBI-Qx2XFIiiWiAxTSJWLytD8P65" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1pi_cOBI-Qx2XFIiiWiAxTSJWLytD8P65" -o l_openvino_toolkit_p_2021.1.110.tgz
tar -zxvf l_openvino_toolkit_p_2021.1.110.tgz
rm l_openvino_toolkit_p_2021.1.110.tgz
