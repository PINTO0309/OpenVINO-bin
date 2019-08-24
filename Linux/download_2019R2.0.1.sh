#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1JOEFOAt2f0rdrgpCId3l9dYTLr3F7UTo" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1JOEFOAt2f0rdrgpCId3l9dYTLr3F7UTo" -o l_openvino_toolkit_p_2019.2.275.tgz
tar -zxvf l_openvino_toolkit_p_2019.2.275.tgz
rm l_openvino_toolkit_p_2019.2.275.tgz

