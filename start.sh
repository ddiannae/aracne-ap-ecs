#!/bin/bash
# This is a comment!
echo Hello World
java -Xmx3892M -XX:-UseGCOverheadLimit -jar /opt/aracne/Aracne.jar -e lung-normal.tsv  -o /aracneap/output --tfs genelist.txt --pvalue 0 --seed 1 --calculateThreshold
java -Xmx3892M -XX:-UseGCOverheadLimit -jar /opt/aracne/Aracne.jar -e lung-normal.tsv  -o /aracneap/output --tfs genelist.txt --pvalue 0 --seed 1
