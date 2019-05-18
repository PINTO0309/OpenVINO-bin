#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1D89-ILACwJ3y01VmG34QOWBCn8Dtf5jV" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1D89-ILACwJ3y01VmG34QOWBCn8Dtf5jV" -o l_openvino_toolkit_p_2019.1.144.tgz
tar -zxvf l_openvino_toolkit_p_2019.1.144.tgz
rm l_openvino_toolkit_p_2019.1.144.tgz

