#!/bin/bash

export CUDA_VISIBLE_DEVICES=4

stfiles=your path to the exported visium counts/*cleaned.tsv
scannotation=your path to the single cell annotations/HV_mta_data.tsv
sccounts=your path to the single cell counts/HV_cnt_matrix.tsv
output=your path to where to save the results
cellmarkers=your path to the marker genes/HV_curated_variableGenes.txt

stereoscope run \
	--sc_cnt $sccounts \
	--sc_labels $scannotation\
	-sce 10000\
	-o $output\
	--st_cnt $stfiles\
	-ste 10000\
	--gpu \
	-gl $cellmarkers

