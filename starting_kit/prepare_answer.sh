#!/bin/bash

# Get data
unzip -n data.zip
data=dev_set


# Make folders
mkdir -p res/answer/

# Iterate over indexes
declare -a indexes=(VIX_1w EURUSDV1M_1w)
for index in "${indexes[@]}"
do
    ### Run baseline ###
    python3 baseline_predictor.py -i $index 

done

cd res/ && zip -r answer_baseline.zip answer/ && rm -r answer/ && cd ..
