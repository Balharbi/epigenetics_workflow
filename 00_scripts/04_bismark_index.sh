#!/bin/bash
#PBS -A bpv-355-aa
#PBS -N bismarki_index
#PBS -o bismark_index.out
#PBS -e bismark_index.err
#PBS -l walltime=24:00:00
#PBS -M jeremy.le-luyer.1@ulaval.ca
#PBS -m ea 
#PBS -l nodes=1:ppn=8
#PBS -r n



#prerequisites
module load compilers/gcc/4.8
module load apps/mugqic_pipeline/1.4 
module load mugqic/bismark/0.14.5
module load mugqic/bowtie2/2.2.6
module load mugqic/bowtie/1.1.2
module load mugqic/samtools/1.2

: 'usage
#bismark_genome_preparation [options] <arguments>
'

#variables
GENOME_FOLDER="04_reference"
N="-N 1"                        #NB_MISMATCHES
L="-L 19"                       #seed length
p="-p 8"                        #THREADS

#prepare genome
bismark_genome_preparation $GENOME_FOLDER  #Bisulfite_Genome/CT_conversion/ and /Bisulfite_Genome/GA_conversion