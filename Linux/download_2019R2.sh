#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=19mBpbBTKAxAlo4AHJgO3VnSTfXjA57hd" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=19mBpbBTKAxAlo4AHJgO3VnSTfXjA57hd" -o l_openvino_toolkit_p_2019.2.242.tgz
tar -zxvf l_openvino_toolkit_p_2019.2.242.tgz
rm l_openvino_toolkit_p_2019.2.242.tgz

