#!/bin/bash
#$ -N test_clipper
#$ -S /bin/sh
#$ -o clipper_test.out
#$ -e clipper_test.log
#$ -l bigmem
#$ -l h_vmem=40g
#$ -j n
#$ -cwd
#$ -V
#$ -p 0

#My attempt at automating full testing, once clipper is installed will run a few different clipper full runs to see if things don't break

#This will be mostly on oolite, and oolite specific (so we can run large files)

clipper -b clipper/test/allup_test.bam -s hg19 -o basic_test
clipper -b /nas3/lovci/projects/FOX2/FOX2_mouse_brain/CLIP/analysis_gsnap/FOX2Brain.all.bam -s mm9 -o fox_2_test
clipper -b /nas3/lovci/projects/IMP2/CLIP/analysis_gsnap/IMP2_Hues6_4A_2010.tq3.norep_gsnaphg19.srt.bam -s hg19 -o IMP2_test
clipper -b /nas3/lovci/projects/FOX1/FOX1_mouse_brain/CLIP/analysis_gsnap/FOX1BrainAll.noRmdup.bam -s mm9 -o FOX1_test


