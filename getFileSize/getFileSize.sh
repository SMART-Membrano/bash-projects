#!/bin/bash

# This script, it gets all the total size of each directoriess 

outputDir="/home/talino/talino-platform/kenny"
outputFile="output_file_size.txt"



while read line; do
    columns=$(echo $line | awk '{print $1}')
    echo $line
    hdfs dfs -du -s -h $line >> "$outputDir/$outputFile"
done < "/home/talino/talino-platform/kenny/partitionList.txt"