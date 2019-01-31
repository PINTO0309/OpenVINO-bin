#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=16L9cOZxKtsXs1QlBzuIb3vqjoJdIP9ZY" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=16L9cOZxKtsXs1QlBzuIb3vqjoJdIP9ZY" -o l_openvino_toolkit_p_2018.5.455.tgz
tar -zxvf l_openvino_toolkit_p_2018.5.455.tgz
rm l_openvino_toolkit_p_2018.5.455.tgz

