#!/bin/bash
./fix_fastq.py base/$1.fastq fixed/$1.fastq
fastp -i fixed/$1.fastq -o trimmed/$1.fastq -h trimmed/$1.html
STAR --runThreadN 4 --genomeDir ref/$2 --readFilesIn trimmed/$1.fastq --outFileNamePrefix star/$1 --outSAMtype BAM SortedByCoordinate --sjdbGTFfile ref/${2}_annot.gtf --limitBAMsortRAM 1328536834
featureCounts -T 4 -a ref/${2}_gff.gff -o counts/${1}_gene_counts.txt -t CDS -g ID star/${1}Aligned.sortedByCoord.out.bam
