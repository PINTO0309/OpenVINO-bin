#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=16ROzXUurFFg2fhcZZTAtf-0WM1GDNKSo" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=16ROzXUurFFg2fhcZZTAtf-0WM1GDNKSo" -o l_openvino_toolkit_p_2021.3.394.tgz
tar -zxvf l_openvino_toolkit_p_2021.3.394.tgz
rm l_openvino_toolkit_p_2021.3.394.tgz
