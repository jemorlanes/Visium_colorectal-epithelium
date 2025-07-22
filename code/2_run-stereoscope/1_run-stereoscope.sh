#!/bin/bash

export CUDA_VISIBLE_DEVICES=4

stfiles=/home/javier.escudero/stereoscope/run_data/GUT_Helmsley_wLudvig/stsc/ST_counts/Colon/HV/*cleaned.tsv
scannotation=/home/javier.escudero/stereoscope/run_data/GUT_Helmsley_wLudvig/stsc/single_cell/Colon_Alexandre/updated_sc/HV_mta_data.tsv
sccounts=/home/javier.escudero/stereoscope/run_data/GUT_Helmsley_wLudvig/stsc/single_cell/Colon_Alexandre/updated_sc/HV_cnt_matrix.tsv
output=/home/javier.escudero/stereoscope/res/GUT_Helmsley_wLudvig/new_sc_Alexandre/HV_curated_variableGenes
cellmarkers=/home/javier.escudero/stereoscope/run_data/GUT_Helmsley_wLudvig/stsc/single_cell/Colon_Alexandre/updated_sc/HV_curated_variableGenes.txt

stereoscope run \
	--sc_cnt $sccounts \
	--sc_labels $scannotation\
	-sce 10000\
	-o $output\
	--st_cnt $stfiles\
	-ste 10000\
	--gpu \
	-gl $cellmarkers

