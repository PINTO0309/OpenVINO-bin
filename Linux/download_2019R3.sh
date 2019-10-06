#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1wM1Plfn6tWGxod1Cyp3-C0awCl38hUXK" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1wM1Plfn6tWGxod1Cyp3-C0awCl38hUXK" -o l_openvino_toolkit_p_2019.3.334.tgz
tar -zxvf l_openvino_toolkit_p_2019.3.334.tgz
rm l_openvino_toolkit_p_2019.3.334.tgz
