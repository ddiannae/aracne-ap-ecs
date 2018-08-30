#!/bin/bash
# This is a comment!
echo Hello World
java -Xmx15360M -XX:-UseGCOverheadLimit -jar /opt/aracne/Aracne.jar -e lung-normal.tsv  -o /aracneap/output --tfs genelist.txt --pvalue 0 --seed 1 --calculateThreshold
java -Xmx15360M -XX:-UseGCOverheadLimit -jar /opt/aracne/Aracne.jar -e lung-normal.tsv  -o /aracneap/output --tfs genelist.txt --pvalue 0 --seed 1 --nodpi --nobootstrap --threads 6
