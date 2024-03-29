## Genomic DNA Hybrid assembly pipeline for Maboni et al. 2022

## Three Distinct Annotation Platforms Differ in Detection of Antimicrobial Resistance Genes in Long-Read, 
## Short-Read, and Hybrid Sequences Derived from Total Genomic DNA or from Purified Plasmid DNA

## Pipeline by Isaac Framst (iframst@uoguelph.ca) 
## University of Guelph, Department of Pathobiology
## University of Georgia, Athens Veterinary Diagnostic Laboratory

printf "Run started on $(date) \n"
printf "Hybrid Genomic DNA assembly"

echo "run ID assignment or isolate name"
read runID

echo "Please specify sample input file or dir for ONT reads (fastq)"
read readsIN_ONT

echo "Please specify forward reads file (fastq)"
read fwdRead

echo "Please specify reverse reads file (fastq)"
read revRead

mkdir $runID
cd $runID

metaphlan2 --input_type fastq -t rel_ab_w_read_stats $fwdRead,$revRead,$readsIN_ONT/*.fastq > ${runID}_metaphlan_profile.txt

porechop -i $readsIN_ONT -o ${runID}_porechop.fastq

spades.py -1 $fwdRead -2 $revRead --nanopore ${runID}_porechop.fastq -o ${runID}_spades -m 1024

bwa index ${runID}_spades/scaffolds.fasta
bwa mem -v 2 -M ${runID}_spades/scaffolds.fasta $fwdRead $revRead ${runID}_porechop.fastq > bwa_mapping.sam

samtools view -b -S bwa_mapping.sam > bwa_mapping.bam 
samtools sort bwa_mapping.bam bwa_mapping_sorted
samtools index bwa_mapping_sorted.bam

pilon --genome ${runID}_spades/contigs.fasta --bam bwa_mapping_sorted.bam --output $runID --outdir ${runID}_pilon --vcf

# pipeline validated May 30 2022



