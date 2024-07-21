#!/bin/bash

mkdir eco
mkdir shizo

STAR --runThreadN 4 --runMode genomeGenerate --genomeDir eco --genomeFastaFiles eco.fa --sjdbGTFfile eco_annot.gtf --genomeSAindexNbases 10
STAR --runThreadN 4 --runMode genomeGenerate --genomeDir shizo --genomeFastaFiles shizo.fa --sjdbGTFfile shizo_annot.gtf --genomeSAindexNbases 10