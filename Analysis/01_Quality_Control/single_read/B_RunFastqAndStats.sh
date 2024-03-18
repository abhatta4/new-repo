#!/bin/bash

#$ - abhatta4@nd.edu
#$ -m abe
#$ -q long
#$ -N RunQC
load module bio/2.0
echo "Running FastQC and Generating Stats"

#make output folder
if [ -d "fastqc" ]; then
    echo "./fastqc exists"
else
    mkdir fastqc
fi

for g in ../../../Input_data/*fastq; do
      fastqc -o ./fastqc $g
done


echo "DONE Running FastQC"
