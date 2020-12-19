#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1eaEV2loqNfnF06uhSPL-f4Sfue_5yh9o" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1eaEV2loqNfnF06uhSPL-f4Sfue_5yh9o" -o l_openvino_toolkit_p_2021.2.185.tgz
tar -zxvf l_openvino_toolkit_p_2021.2.185.tgz
rm l_openvino_toolkit_p_2021.2.185.tgz
