# HybridAMRgenotyping

**Three Different Annotation Platforms Differ Significantly in Detection of Antimicrobial Resistance Genes in Long-Read, Short-Read, and Hybrid Sequences Derived from Total Genomic DNA or from Purified Plasmid DNA** 

Grazieli Maboni<sup>1,2#</sup>, Rodrigo de Paula Baptista<sup>3,6,7</sup>, Joy Wireman<sup>5</sup>, Isaac Framst<sup>2</sup>, Anne O. Summers<sup>5</sup>, Susan Sanchez<sup>1,4</sup>

Affiliations 
<sup>1</sup> Athens Veterinary Diagnostic Laboratory, University of Georgia, Athens, Georgia, USA
<sup>2</sup>Department of Pathobiology, Ontario Veterinary College, University of Guelph, Guelph, Canada

<sup>3</sup>Institute of Bioinformatics, University of Georgia, Athens, Georgia, USA

<sup>4</sup> Department of Microbiology, University of Georgia, Athens, Georgia, USA

<sup>5</sup> Department of Infectious Diseases, University of Georgia, Athens, Georgia, USA

<sup>6</sup>Center for Tropical and Emerging Global Diseases, University of Georgia, Athens, Georgia, USA

<sup>7</sup>Department of Infectious Diseases, Houston Methodist Research Institute, Houston, Texas, USA

\# Corresponding author: Grazieli Maboni, gmaboni@uoguelph.ca 

Repository Information
---

This repository contains supporting documentation for hybrid Illumina miSeq and Oxford Nanopore minION bacterial plasmid assembly for the detection of antimicrobial susceptibility genotypes. Each pipeline serves as a wrapper for the pipeline components and corresponds to a unique combination of assembly methods and tools. Pipelines can be grouped into four main methods: 
- Nanopore-only assembly 
- Illimuna-only assembly 
- Hybrid assembly (simultaneous assembly of Illumina reads and Nanopore reads)
- Nanopore-polished (Flye-assembled Nanopore reads post-hoc matched with Illumina reads) 

Pipelines
---------
Total genomic DNA

- [Genomic Nanopore Flye](Pipelines/Genomic_nanopore.sh) (Nanopore-only assembly) 
- [Genomic Nanopore polished Flye](Pipelines/Genomic_nanopore_polished.sh) (Nanopore-polished assembly, Flye-assembled Nanopore reads post-hoc matched with Illumina reads) 
- [Genomic Illumina](Pipelines/Genomic_Illumina.sh) (Illumina-only assembly) 
- [Genomic Hybrid](Pipelines/Genomic_hybrid.sh) (simultaneous assembly of Illumina reads and Nanopore reads)

Plasmid only DNA
- [Plasmid Nanopore Flye](Pipelines/Plasmid_nanopore_flye.sh) (Nanopore-only assembly)
- [Plasmid Nanopore Canu](Pipelines/Plasmid_nanopore_canu.sh) (Nanopore-only assembly)
- [Plasmid Nanopore polished Flye](Pipelines/Plasmid_nanopore_polished_flye.sh) (Nanopore-polished assembly, Flye-assembled Nanopore reads post-hoc matched with Illumina reads)
- [Plasmid Nanopore polished Canu](Pipelines/Plasmid_nanopore_polished_canu.sh) (Nanopore-polished assembly, Canu-assembled Nanopore reads post-hoc matched with Illumina reads)
- [Plasmid Illumina](Pipelines/Plasmid_illumina_spades.sh) (Illumina-only assembly) 
- [Plasmid Hybrid](Pipelines/Plasmid_hybrid_spades.sh) (simultaneous assembly of Illumina reads and Nanopore reads)

[Dependencies](Manual/Install.md)
-----------
HybridAMR relies on the use of previously developed open-source software. The specific integration and configuraion of these tools is determined by the specific needs of each pipeline. This pipeline requires Linux or macOS; it is possible to use this pipeline with Apple Silicon Macs, either through Rosetta2 or by building the dependencies from source. 

[Installation](Manual/Install.md) 
-----------
As is reccomended with most bioinformatics software, this pipeline is contained in a conda environment with the necessary dependencies and python version.


[Usage](Manual/Usage.md)
----------
Reccomended system requirements: 8 core CPU, 32gb system memory, 500gb SSD

Please see the install and usage document for details.

