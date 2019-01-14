#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1co0oLorDsZUKcsAbbyT47CQBTPGhk_-Q" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1co0oLorDsZUKcsAbbyT47CQBTPGhk_-Q" -o l_openvino_toolkit_p_2018.1.265.tgz
tar -zxvf l_openvino_toolkit_p_2018.1.265.tgz
rm l_openvino_toolkit_p_2018.1.265.tgz

