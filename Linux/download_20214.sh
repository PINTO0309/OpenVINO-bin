#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1sKAaJfMbZ9ISiH6PHl6m6bZNQZGdwl5X" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1sKAaJfMbZ9ISiH6PHl6m6bZNQZGdwl5X" -o l_openvino_toolkit_p_2021.4.582.tgz
tar -zxvf l_openvino_toolkit_p_2021.4.582.tgz
rm l_openvino_toolkit_p_2021.4.582.tgz
