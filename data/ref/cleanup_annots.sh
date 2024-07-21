#!/bin/bash


gffread eco_annot.gff3 -o eco_annot.gtf
grep 'geneID' eco_annot.gtf > eco.gtf

gffread shizo_annot.gff3 -o shizo.gtf