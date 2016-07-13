ARG-walker: inference of individual specific strengths of meiotic recombination hotspots by population genomics analysis.
-----

## Introduction

ARG-walker is a novel graph mining algorithm which is based on random walks on ancestral recombination graphs (ARG), to estimate individual-specific recombination hotspot strengths. Most existing LD-based algorithms can only estimate the average recombination rate of a population. To the best of our knowledge, ARG-walker is the first compu- tational method for estimating individual-specific strengths of recombination hotspots using only sequence polymorphism data. 


## Usage

1. This folder includes two versions of ARGwalker program. One is "ARGwalker.pl" for one sample of haplotypes, the other is "ARGwalker_batch.pl" for batch-mode run of multiple samples.

2. There is a toy data to play with ARGwalker named "sample_input.txt".

3. To run ARGwalker under Windows operating system, click "Start" button and type command Prompt to open the DOS. Then, navigate to the folder where you store ARGwalker codes and run the script.

For example, if the codes are stored under path "c:\Users\CH\Desktop\ARG-walker", you can type the following to execute ARGwalker:

```
## on windows OS command line
>> C:
>> cd c:\Users\CH\Desktop\ARG-walker
>> perl ARGwalker.pl sample_input 
```

## Citation

Chen H, Yang P, Guo J, Kwoh CK, Przytycka TM, Zheng J. [ARG-walker: inference of individual specific strengths of meiotic recombination hotspots by population genomics analysis](http://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-16-S12-S1). BMC Genomics. BioMed Central Ltd; 2015;16: S1. doi:10.1186/1471-2164-16-S12-S1