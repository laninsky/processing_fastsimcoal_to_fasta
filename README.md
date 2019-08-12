# processing_fastsimcoal_to_fasta v0.0
Taking the concatenated arlequin file from fastsimcoal and splitting by locus. Assumes you've simulated two copies per lineage (i.e. alleles)

Need to change parameters in parameter block before running

alleles.R will give you two separate alleles per individual.
loci.R will give you just the first allele per individual.

# Version history
Version 0.0 published with:  
Alexander, A.M., Su, Y.C., Oliveros, C.H., Olson, K.V., Travers, S.L. and Brown, R.M., 2017. Genomic data reveals potential for hybridization, introgression, and incomplete lineage sorting to confound phylogenetic relationships in an adaptive radiation of narrow‐mouth frogs. Evolution, 71(2), pp.475-488.

This pipeline would not be possible without:  
R: R Core Team. 2015. R: A language and environment for statistical computing. URL http://www.R-project.org/. R Foundation for Statistical Computing, Vienna, Austria. https://www.r-project.org/

Stringr:  Hadley Wickham (2012). stringr: Make it easier to work with strings.
