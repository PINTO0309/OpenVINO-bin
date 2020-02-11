#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=12RhANlZMVOdS8TOwjzdvwm0aXTbU2l-K" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=12RhANlZMVOdS8TOwjzdvwm0aXTbU2l-K" -o l_openvino_toolkit_p_2020.1.023.tgz
tar -zxvf l_openvino_toolkit_p_2020.1.023.tgz
rm l_openvino_toolkit_p_2020.1.023.tgz
