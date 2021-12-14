#!/bin/bash

# produces Jekyll blog post compliant datetime stamp output like the following, with time in 24hr format and -500 representing NY USA EST UTC offset
# 2021-12-10 21:09:55 -0500
# See: https://www.cyberciti.biz/faq/linux-unix-formatting-dates-for-display/

NOW=`date +"%Y-%m-%d %T %z"`

echo $NOW