#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=13Tq2fbzKB4Z8ctA_GmJEOoIkD-_3avt5" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=13Tq2fbzKB4Z8ctA_GmJEOoIkD-_3avt5" -o l_openvino_toolkit_p_2018.1.249.tgz
tar -zxvf l_openvino_toolkit_p_2018.1.249.tgz
rm l_openvino_toolkit_p_2018.1.249.tgz

