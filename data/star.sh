#!/bin/bash

mdkir star_aligned
STAR --runThreadN 4 --genomeDir ref/eco --readFilesIn fixed/eco_gluc_1_fixed.fastq --outFileNamePrefix test/star_output --outSAMtype BAM SortedByCoordinate