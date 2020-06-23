#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1iqAC9-IUYqcHVf4YoEVxC5o7V75uYvb-" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1iqAC9-IUYqcHVf4YoEVxC5o7V75uYvb-" -o l_openvino_toolkit_p_2020.3.194.tgz
tar -zxvf l_openvino_toolkit_p_2020.3.194.tgz
rm l_openvino_toolkit_p_2020.3.194.tgz
