#!/bin/bash
# This is a comment!
echo Hello World
aws s3 cp s3://transregulation-aracne-inputs/Lung_Length.full_GC.full_Between.tmm_Arsyn_Normal input.txt
ls
head input.txt
