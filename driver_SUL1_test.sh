#!/bin/bash
#$ -S /bin/bash
#$ -l mfree=2G -pe serial 4 -l h_rt=0:24:0:0
#$ -cwd
#$ -N msa_pacbio
# -o /net/dunham/vol2/Cindy/pacbio_git/Subassembly_PB_IndelCorrection/test
# -e /net/dunham/vol2/Cindy/pacbio_git/Subassembly_PB_IndelCorrection/test

# for Clara! CHANGEEEE
#$ -o /net/dunham/vol2/Clara/projects/Subassembly_PB_IndelCorrection/test
#$ -e /net/dunham/vol2/Clara/projects/Subassembly_PB_IndelCorrection/test

module load python/3.5.2
module load muscle/3.8.31

# for Clara :) 
python msa_pacbio.py -d /net/dunham/vol2/Clara/projects/Subassembly_PB_IndelCorrection/test \
    -o SUL1_test100_seq_barcodes_aligned.txt \
    --highQual SUL1_test100_combined_minQ0_assignment.tsv \
    --inputSeqs SUL1_test100_seq_barcodes_filtered.txt \
    -c 1 -t 0.7

# for Cindy :)
#python msa_pacbio.py -d /net/dunham/vol2/Cindy/pacbio_git/Subassembly_PB_IndelCorrection/test -o SUL1_test100_seq_barcodes_aligned.txt --highQual SUL1_test100_combined_minQ0_assignment.tsv --inputSeqs SUL1_test100_seq_barcodes_filtered.txt -v
