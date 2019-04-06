#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1OW2HK4KsImPuqvHI7NZ7_w9P7rB80sBI" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1OW2HK4KsImPuqvHI7NZ7_w9P7rB80sBI" -o l_openvino_toolkit_p_2019.1.094.tgz
tar -zxvf l_openvino_toolkit_p_2019.1.094.tgz
rm l_openvino_toolkit_p_2019.1.094.tgz

