#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1kbVQRRJ1Don0ukkmLn2tuRvO5djET94V" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1kbVQRRJ1Don0ukkmLn2tuRvO5djET94V" -o l_openvino_toolkit_p_2020.4.287.tgz
tar -zxvf l_openvino_toolkit_p_2020.4.287.tgz
rm l_openvino_toolkit_p_2020.4.287.tgz
