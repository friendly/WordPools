[![](http://www.r-pkg.org/badges/version/WordPools)](https://cran.r-project.org/package=WordPools) [![](http://cranlogs.r-pkg.org/badges/grand-total/WordPools)](https://cran.r-project.org/package=WordPools)
[![Rdoc](http://www.rdocumentation.org/badges/version/WordPools)](http://www.rdocumentation.org/packages/WordPools) 

## WordPools

**Classical word pools used in studies of learning and memory**

Version: `1.1-1`

This package collects several classical word pools used
most often to provide lists of words in psychological
studies of learning and memory.  

Each word pool consists of a population of words, together
with various descriptive measures (number of letters,
number of syllables, word frequency, etc.) and 
normative measures (imagery, concreteness, etc.)
that can be used in experimental designs to vary
and control such factors.

One typical use is to design an experiment where stimulus words vary systematically
in one or more variables across conditions, but other variables are controlled
by random selection.  


* Toronto Word Pool (`TWP`) - from Friendly et al. (1982), contains 1080 words in various grammatical classes (nouns, adjectives, and verbs), taken originally from the Thorndike-Lorge (1944) norms)
* Paivio word pool (`Paivio`) - The Paivio, Yuille & Madigan (1968) word pool contains 925 nouns, together
  with average ratings of these words on imagery, concreteness and meaningfulness, along with other variables
* Battig - Montague Categorized Word Norms (`Battig`) - This dataset, from Battig & Montague (1968) 
  comprises a ranked list of 5231 words listed in 56 taxonomic categories by people who were asked to list as many exemplars of a given category.
* Category Properties (`CatProp`) - Properties of the 56 taxonomic categories from the Battig-Montague
category norms published by Joelson and Hermann (1978)


A simple function, `pickList()` is provided for the task of selecting several random samples
of words from a given word pool, with restrictions on the ranges of available variables.

A legacy web app (no longer maintained) for randomly selecting lists of words from the
Paivio word pool is provided at Friendly (2006)
[Paivio Word list generator](http://datavis.ca/online/paivio/).

### References

Paivio, A., Yuille, J.C. & Madigan S. Concreteness, imagery and
meaningfulness for 925 nouns. (1968)  *Journal of Experimental Psychology*,
Monograph Supplement*, **76**, No.1, pt.2.

Battig, W.F. & Montague, W.E. (1969).
    Category norms for verbal items in 56 categories: A replication and extension of the Connecticut norms. *Journal of Experimental Psychology*, 80 (1969), pp. 1-46

Friendly, M. (2006) [Paivio Word list generator](http://datavis.ca/online/paivio/)

Friendly, M., Franklin, P., Hoffman, D. & Rubin, D. The Toronto Word Pool,
*Behavior Research Methods and Instrumentation*, 1982, 14(4), 375-399.
[TWP paper PDF](http://datavis.ca/papers/twp.pdf)



