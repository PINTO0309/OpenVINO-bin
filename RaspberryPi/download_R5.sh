#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1rBl_3kU4gsx-x2NG2I5uIhvA3fPqm8uE" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1rBl_3kU4gsx-x2NG2I5uIhvA3fPqm8uE" -o l_openvino_toolkit_ie_p_2018.5.445.tgz
tar -zxvf l_openvino_toolkit_ie_p_2018.5.445.tgz
rm l_openvino_toolkit_ie_p_2018.5.445.tgz

