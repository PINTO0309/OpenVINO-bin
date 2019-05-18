#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1RbEy-lMYmPUYH3kHWHAdM2fJ_TV43JMU" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1RbEy-lMYmPUYH3kHWHAdM2fJ_TV43JMU" -o l_openvino_toolkit_raspbi_p_2019.1.144.tgz
tar -zxvf l_openvino_toolkit_raspbi_p_2019.1.144.tgz
rm l_openvino_toolkit_raspbi_p_2019.1.144.tgz

