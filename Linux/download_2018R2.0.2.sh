#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1Tpi8XdxBRW3ERWKxaEQth0lDFygW3QSQ" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1Tpi8XdxBRW3ERWKxaEQth0lDFygW3QSQ" -o l_openvino_toolkit_p_2018.2.319.tgz
tar -zxvf l_openvino_toolkit_p_2018.2.319.tgz
rm l_openvino_toolkit_p_2018.2.319.tgz

