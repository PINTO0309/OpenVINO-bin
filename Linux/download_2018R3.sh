#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1OUKaBSGuWwMJb7Pa4wzVxySWXWE5U7gt" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1OUKaBSGuWwMJb7Pa4wzVxySWXWE5U7gt" -o l_openvino_toolkit_p_2018.3.343.tgz
tar -zxvf l_openvino_toolkit_p_2018.3.343.tgz
rm l_openvino_toolkit_p_2018.3.343.tgz

