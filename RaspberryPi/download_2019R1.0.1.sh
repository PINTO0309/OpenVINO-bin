#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1NFt6g6ZkneHioU2P7rUJ8BFpQhIazbym" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1NFt6g6ZkneHioU2P7rUJ8BFpQhIazbym" -o l_openvino_toolkit_raspbi_p_2019.1.133.tgz
tar -zxvf l_openvino_toolkit_raspbi_p_2019.1.133.tgz
rm l_openvino_toolkit_raspbi_p_2019.1.133.tgz

