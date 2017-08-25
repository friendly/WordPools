[![](http://www.r-pkg.org/badges/version/WordPools)](https://cran.r-project.org/package=WordPools) [![](http://cranlogs.r-pkg.org/badges/grand-total/WordPools)](https://cran.r-project.org/package=WordPools)
[![Rdoc](http://www.rdocumentation.org/badges/version/WordPools)](http://www.rdocumentation.org/packages/WordPools) 

## WordPools

This package collects several classical word pools used
most often to provide lists of words in psychological
studies of learning and memory.  

* Toronto Word Pool (`TWP`) - from Friendly etal (1982), contains 1080 words in various grammatical classes (nouns, adjectives, and verbs), taken originally from the Thorndike-Lorge (1944) norms)
* Paivio word pool (`Paivio`) - The Paivio, Yuille & Madigan (1968) word pool contains 925 nouns, together
  with average ratings of these words on imagery, concreteness and meaningfulness, along with other variables
* Battig - Montague Categorized Word Norms (`Battig`) - This dataset, from Battig & Montague (1968) 
  comprises a ranked list of 5231 words listed in 56 taxonomic categories by people who were asked to list as many exemplars of a given category.
* Category Properties (`CatProp`) - Properties of the 56 taxonomic categories from the Battig-Montague
category norms published by Joelson and Hermann (1978)

Each word pool consists of a population of words, together
with various descriptive measures (number of letters,
number of syllables, word frequency, etc.) and 
normative measures (imagery, concreteness, etc.)
that can be used in experimental designs to vary
and control such factors.

A simple function, `pickList()` is provided for the task of selecting several random samples
of words from a given word pool, with restrictions on the ranges of available variables.
