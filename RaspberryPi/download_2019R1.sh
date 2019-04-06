#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1gMNE3bA8_DVGwFxV4dJYTP3qmGwKnkX6" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1gMNE3bA8_DVGwFxV4dJYTP3qmGwKnkX6" -o l_openvino_toolkit_raspbi_p_2019.1.094.tgz
tar -zxvf l_openvino_toolkit_raspbi_p_2019.1.094.tgz
rm l_openvino_toolkit_raspbi_p_2019.1.094.tgz

