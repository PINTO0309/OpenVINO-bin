#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1z35b6TDlWLsOJ7BUTR3EfmSHc25nXF7U" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1z35b6TDlWLsOJ7BUTR3EfmSHc25nXF7U" -o l_openvino_toolkit_p_2019.3.376.tgz
tar -zxvf l_openvino_toolkit_p_2019.3.376.tgz
rm l_openvino_toolkit_p_2019.3.376.tgz
