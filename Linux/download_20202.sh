#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=14WSUwQTAdEHJIVfITIE3i19mzRvn-w_Q" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=14WSUwQTAdEHJIVfITIE3i19mzRvn-w_Q" -o l_openvino_toolkit_p_2020.2.120.tgz
tar -zxvf l_openvino_toolkit_p_2020.2.120.tgz
rm l_openvino_toolkit_p_2020.2.120.tgz
