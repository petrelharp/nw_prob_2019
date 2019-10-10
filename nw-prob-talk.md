---
title: "Tree sequences"
subtitle: "progress and challenges in genomes and genealogies"
author: "Peter Ralph"
date: "Northwest Probability // October 2019"
---


# Genomes and genealogies

## Genomes

> - are very big ($10^7$--$10^12$ nucleotides)
> - encode the basic *mechanisms* of life
> - reflect past *history* and *process*

## 

Your two copies of the genome
were inherited, noisily, from your two parents,

. . .

and from your four grandparents,

. . .

and your eight great-grandparents,

. . .

see where this is going?


## Genealogical ancestors

In a well-mixed population of size $N$,

- A most recent common ancestor of *everyone* lived at $\approx \log 2 N$ generations ago.

- For humans: $\approx 500$ years; 
    but including geography and history, $\approx$ 2--3 thousand years
    (Chang ’99; Rohde, Olson & Chang ’04)

- *Everyone* alive $\approx 1.77 \log_2 n$ generations ago
    is either an ancestor of everyone or has left behind no descendants. (Chang ’99)

## Meiosis & Recombination (Sex)

::: {.columns}
::::::: {.column width=50%}

![recombination](figs/recombination-cartoon-crop.png)

:::
::::::: {.column width=50%}

- You have two copies of each chromosome, 
  one from each parent.

- When you make a gamete, the copies *recombine*.

- Model: switch parents at locations of a Poisson process.

:::
::::::

## You and your great${}^{k-1}$-grand parents

The number of $k^\text{th}$ *genetic* ancestors
grows *linearly* with $k$.

fig from gcbias


<!-- the ARG -->
# Tracing genetic ancestry

## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- <span class=greyed> each pair of ancestors *coalesces* at rate 1  </span>
- <span class=greyed> ancestors *split* at a uniform location at rate 1 </span>

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.1.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- <span class=greyed> ancestors *split* at a uniform location at rate 1 </span>

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.2.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- ancestors *split* at a uniform location at rate 1

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.3.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- ancestors *split* at a uniform location at rate 1

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.4.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- ancestors *split* at a uniform location at rate 1

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.5.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- ancestors *split* at a uniform location at rate 1

:::: {.greyed}
Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)
:::::

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.6.png){width=80%}
::::

:::
::::::: 


## The coalescent with recombination

::: {.columns}
::::::: {.column width=50%}

In a *randomly mating* population of size $N$,
ancestry of some chromosomes follows a
*fragmentation-coalescence process*:

- labeled ancestral blocks assort into *ancestors*
- each pair of ancestors *coalesces* at rate 1
- ancestors *split* at a uniform location at rate 1

Result: the *Ancestral Recombination Graph*, or ARG.
(Griffiths & Marjoram)

:::
::::::: {.column width=50%}

:::: {.floatright}
![](figs/frag_coal/fragmentation_coalescence.6.png){width=80%}
::::

:::
::::::: 

## Simulation

[`msprime`](https://github.com/jeromekelleher/msprime): whole genomes with $N \sim 10^4$ in $O(\text{hours})$

by [Kelleher, Etheridge, & McVean 2016](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004842) 

::: {.floatright}
![jerome kelleher](figs/jerome.jpeg){width=50%}

:::: {.caption}
jerome kelleher
::::

:::


# Forwards simulation

## 

Coalescent simulations are *much faster*
than forwards-time, individual-based simulations

. . .

because they don't have to keep track of *everyone*,
only the ancestors of your sample.

. . .

**But:** coalescent theory relies on a *duality* that is broken by
natural selection or real geography.


---------------------------

To study evolution or understand populations across real geography,
we need individual-based, forwards-time simulations.

. . .

Then every individual needs to carry around her genotype (somehow).
Even at neutral sites!

. . .

**Bummer.**

. . .

*But wait...*

## 

If we *record the tree sequence*
that relates everyone to everyone else,

after the simulation is over we can put neutral mutations down on the trees.

. . .

Since neutral mutations don't affect demography,

this is *equivalent* to having kept track of them throughout.

------------

This means recording the entire genetic history of **everyone** in the population, **ever**.

.  . .

It is *not* clear this is a good idea.



<!-- explain tree sequences and why they are so efficient (5min) -->
# The tree sequence

## History is a sequence of trees

For a set of sampled chromosomes,
at each position along the genome there is a genealogical tree
that says how they are related.

. . .

![Trees along a chromosome](figs/ts_ex/sim_ts.anim.gif){width=100%}


----------------------

The **tree sequence** is a way to describe this, er, sequence of trees.


---------------

![genotypes](figs/ts_ex/tree_sequence_genotypes.png)

---------------

![genotypes and a tree](figs/ts_ex/tree_sequence_genotype_and_tree.png)

---------------

![genotypes and the next tree](figs/ts_ex/tree_sequence_next_genotype_and_tree.png)

-------------

[Kelleher, Etheridge, and McVean](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004842) 
introduced the **tree sequence** data structure
for a fast coalescent simulator, [msprime](https://github.com/jeromekelleher/msprime).

- stores sequence *and* genealogical data **very** efficiently

- tree-based sequence storage closely related to haplotype-matching compression

- python/C [`tskit`](https://github.com/tskit-dev/tskit) tools

::: {.floatright}
![jerome kelleher](figs/jerome.jpeg){width=50%}

:::: {.caption}
jerome kelleher
::::

:::

## File sizes

::: {.centered}
![file sizes](figs/tsinfer_sizes.png){width=90%}
:::

::: {.caption}
from [Kelleher et al 2018, *Inferring whole-genome histories in large population datasets*](https://www.nature.com/articles/s41588-019-0483-y), Nature Genetics
:::

<!-- Estimated sizes of files required to store the genetic variation data for a
simulated human-like chromosome (100 megabases) for up to 10 billion haploid
(5 billion diploid) samples. Simulations were run for 10 1 up to 10 7 haplotypes
using msprime [Kelleher et al., 2016], and the sizes of the resulting files plotted
(points). -->

## History is a sequence of trees

For a set of sampled chromosomes,
at each position along the genome there is a genealogical tree
that says how they are related.

![Trees along a chromosome](sim_ts.anim.gif)


----------------------

A **tree sequence** describes this, er, sequence of trees.

. . .

*Observations:*

1. The *pedigree* (parental relationships) plus crossover locations
    would give us the tree sequence for *everyone, ever*.

2. Much less can fully describe the history relevant to a *sample* of genomes.

3. This information is equivalent to the Ancestral Recombination Graph (ARG).


-------------

[Kelleher, Etheridge, and McVean](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004842) 
introduced the **tree sequence** data structure
for a fast coalescent simulator, [msprime](https://github.com/jeromekelleher/msprime).

- stores genealogical *and* variation data **very** compactly

- efficient algorithms available:

    * subsetting
    * calculation of allele frequencies in arbitrary cohorts
    * linkage disequilibrium
    * log-time haplotype matching

- tree-based sequence storage closely related to haplotype-matching compression


## Simulated file sizes

::: {.columns}
::::::: {.column width="50%"}

![file sizes](file_size.png)

:::
::::::: {.column width="50%"}

- HapMap chr1 genetic map (250Mb)
- Gutenkunst et al out-of-Africa model (3 pops)
- mutation rate $2 \times 10^{-8}$ per gen
- at $n=10^7$ 

    * about 17 million variants
    * VCF size: 318 TiB (250,000$\times$ larger)

:::
:::::::

## Example: three samples; two trees; two variant sites

![Example tree sequence](example_tree_sequence.png)

-----------------------

Storing a tree sequence in
the four tables - *nodes*, *edges*, *sites*, and *mutations* -
is *succinct* (no redundancy).

. . .

These are stored efficiently (hdf5) on disk
with a bit more information (e.g., metadata).


## Nodes and edges

Edges 

:   Who inherits from who; only *necessary* for coalescent events.

    Records: interval (left, right); parent node; child node.

Nodes 

:   The ancestors those happen in.

    Records: time ago (of birth); ID (implicit).

-------------------

![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.0.png)

-------------------


![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.1.png)

-------------------


![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.2.png)

-------------------


![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.3.png)

-------------------


![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.4.png)

-------------------


![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.5.png)

-------------------

![Building a tree sequence](nodes_edges_walkthrough/nodes_edges_walkthrough.6.png)


## Sites and mutations

Mutations

:   When state changes along the tree.

    Records: site it occured at; node it occurred in; derived state.

Sites 

:   Where mutations fall on the genome.

    Records: genomic position; ancestral (root) state; ID (implicit).


------------------

![Adding mutations](sites_muts_walkthrough/sites_muts_walkthrough.0.png)

------------------

![Adding mutations](sites_muts_walkthrough/sites_muts_walkthrough.1.png)

------------------

![Adding mutations](sites_muts_walkthrough/sites_muts_walkthrough.2.png)

------------------

![Adding mutations](sites_muts_walkthrough/sites_muts_walkthrough.3.png)

------------------

![Adding mutations](sites_muts_walkthrough/sites_muts_walkthrough.4.png)


<!-- application to fwds sim recording (5min) -->
# Forwards-time tree sequence recording

## The main idea

If we *record the tree sequence*
that relates everyone to everyone else,

after the simulation is over we can put neutral mutations down on the trees.

. . .

Since neutral mutations don't affect demography,

this is *equivalent* to having kept track of them throughout.

------------

This means recording the entire genetic history of **everyone** in the population, **ever**.

.  . .

It is *not* clear this is a good idea.


## Tree recording strategy

Every time an individual is born, we must:

::: incremental

1. add each gamete to the Node Table,
2. add entries to the Edge Table
    recording which parent each gamete inherited each bit of genome from, and
3. add any new selected mutations to the Mutation Table 
    and (if necessary) their locations to the Site Table.

:::

. . .

::: {.columns}
:::::: {.column width=15%}

![Rightarrow](finger_right.png){width="100%"}

:::
:::::: {.column width=5%}

:::
:::::: {.column width=75%}

This produces **waaaaay** too much data.

:::
::::::

-------------------

We won't end up needing the *entire* history
of *everyone ever*,

. . .

but we won't know *what* we'll need until later.

. . .

How do we get rid of the extra stuff?


## Simplification

*Question:* given a tree sequence
containing the history of many individuals,
how do we *simplify* it to only the history
of a subset?

-----------

Concretely, given an input tree sequence
and a subset of its nodes we call the *samples*,
we want a new tree sequence for which:

1. All marginal trees match the corresponding subtree 
    in the input tree sequence.

2. Every non-sample node in marginal trees has at least two children.

3. All nodes and edges are ancestral to at least one sample.

4. No adjacent redundant edges 
    (e.g., $(\ell, x, p, c) + (x, r, p, c) \rightarrow (\ell, r, p, c)$).

-----------

*Answer:* to simplify a tree sequence
to the history of the *samples*:

1. Paint each *sampled* chromosome a distinct color.

2. Moving back up the tree sequence,
    copy colors of each chromosome to the parental chromosomes
    they inherited from.

3. If two colors go in the same spot (*coalescence*),
    replace with a new color (unique to that ancestor).
    Output a node for the ancestor and an edge for the coalescence.

4. Once all colors have coalesced in a given segment,
    stop propagating it.

## An example: simplify these to J and K

![Simplify example](simplify_walkthrough.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.0.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.1.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.2.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.3.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.4.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.5.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.6.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.7.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.8.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.9.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.10.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.11.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.12.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.13.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.14.png){ width="100%" }

-------------------

![Simplify example](simplify_walkthrough/simplify_walkthrough.15.png){ width="100%" }


## Wright-Fisher, N=10: before simplification

![Wright-Fisher tree sequence](sim_wf.anim.gif)

## Wright-Fisher, N=10: before simplification

![Wright-Fisher tree sequence](sim_wf_unlabeled.anim.gif)

## ... and after simplification

![Simplified Wright-Fisher tree sequence](sim_wf_simplified.anim.gif)


## *Revised* tree recording strategy

Every time an individual is born, we must:


1. add each gamete to the Node Table,
2. add entries to the Edge Table
    recording which parent each gamete inherited each bit of genome from
3. add any new mutations to the Mutation Table 
    and (if necessary) their locations to the Site Table.

... and,

4. Every so often, *simplify* the tables so far,
    retaining the history of the current generation.


<!-- 5. display impressive speedups 2min) -->
# Implementation and results

## Benchmark implementation

- Recording, simplifying, and output of tables: 
    `C` code in `msprime`.

- Simulation: [`fwdpp`](https://github.com/molpopgen/fwdpp), by Kevin Thornton (in `C++`) ([code](https://github.com/molpopgen/fwdpy11_arg_example))

- Glue: [`pybind11`](https://github.com/pybind/pybind11/) and [`numpy`](http://www.numpy.org/)

- Machine: Ubuntu / 2x 2.6 GHz Intel E5-2650 CPU

. . .

*Other implementations:* 

- [pure `python`](https://github.com/ashander/ftprime), interfacing with [`simuPOP`](https://github.com/BoPeng/simuPOP)
- [cython](https://github.com/molpopgen/tutorials/blob/cython_cpp_tutorial/notebooks/wfcython.ipynb)

## Simulation parameters

1. Wright-Fisher population of size $N$
2. simulated for $10N$ genreations
3. neutral mutation rate $\mu$ equal to recombination rate $r$ per gamete
4. many, weakly deleterious mutations: rate $\mu/100$ with
    $s$ exponentially distributed with mean $2.5/N$.

. . .

*Note:*
if we recorded tree sequences ("pedigree recording")
then the neutral mutation rate was *zero*
but neutral mutations were added *afterwards*.


--------------------------

![Total run time per single simulation as a function of region length.](rawspeed.png){ width=80% }

--------------------------

![Relative speedup of simulations](speedup.png){ width=80% }



## Memory use

RAM requirements are determined by how often you simplify.





# Along the sequence of trees

## Computation run time

::: {.centered}
![efficiency of treestat computation](figs/treestats/benchmarks_without_copy_longer_genome.png){width=70%}
:::

::: {.caption}
from [Ralph, Thornton and Kelleher 2019, *Efficiently summarizing relationships in large samples*](https://www.biorxiv.org/content/10.1101/779132v1?rss=1), bioRxiv
:::

##

**What do genotypes tell us about the genealogies?**


::: {.caption}
also from [Ralph, Thornton and Kelleher 2019, *Efficiently summarizing relationships in large samples*](https://www.biorxiv.org/content/10.1101/779132v1?rss=1), bioRxiv
:::


## Summaries of genotypes and genealogies

::: {.columns}
:::::: {.column width=47%}

*Genotypes:*

1. For each site,
2. look at who has which alleles,
3. and add a *summary* of these values to our running total.

*Example:*
genetic distance
counts how many mutations differ between two sequences.

:::
:::::: {.column width=5%}

:::
:::::: {.column width=47%}

<!-- nothing til next slide -->

:::
::::::

## Summaries of genotypes and genealogies

::: {.columns}
:::::: {.column width=47%}

*Genotypes:*

1. For each site,
2. look at who has inherited which alleles,
3. and add a *summary* of these values to the running total.

*Example:*
sequence divergence
counts how many mutations differ between two sequences.

:::
:::::: {.column width=5%}

:::
:::::: {.column width=47%}

*Trees:*

1. For each branch,
2. look at who would inherit mutations on that branch,
3. and add the *expected contribution* to the running total.

*Example:*
the mean time to most recent common ancestor between two sequences.

:::
::::::

##

![site and branch stats](figs/ts_ex/tree_sequence_site_and_branch.png)


## Duality

Any set of *sample weights* $w$ and *summary function* $f$
defines both

- a statistic of genotypes, $\text{Site}(f,w)$, and
- a statistic of genealogies, $\text{Branch}(f,w)$.

. . .

With genealogies *fixed*, and averaging only over *mutations* with rate $\mu$,
$$\begin{equation}
    \text{Branch}(f, w) = \frac{1}{\mu} \E\left[ \text{Site}(f, w) \right] .
\end{equation}$$

. . .

Dealing directly with genealogies can
*remove the layer of noise due to mutation*:
$$\begin{equation}
    \frac{1}{\mu^2} \var\left[\text{Site}(f,w)\right]
    =
    \var\left[\text{Branch}(f,w)\right]
    +
    \frac{1}{n}
    \E\left[\text{Branch}(f^2,w)\right]
\end{equation}$$

## 

:::: {.columns}
:::::::: {.column width=60%}


![duality in 1000G data](figs/treestats/relate_chr20_site_div_branch.1000000.diversity.png){width=100%}

:::
:::::::: {.column width=40%}

Duality, on 1000 Genomes data? Not quite...

- variation in mutation rate?
- biased gene conversion?
- selection?
- inference artifacts?

::: {.caption}
*Tree sequence from [Speidel et al 2019](https://www.nature.com/articles/s41588-019-0484-x).*
:::

:::
::::::::


# Inferring the tree sequence

##

What about real data?

## Inferring the ancestry of everyone

**Left-to-right:**

Leo Speidel, Marie Forest, Sinan Shi, and Simon R. Myers.
*A method for genome-wide genealogy estimation for thousands of samples.*
Nature Genetics, 51(9):1321–1329, 2019.

. . .

**Bottom-up:**

Jerome Kelleher, Yan Wong, Anthony W. Wohns, Chaimaa Fadil, Patrick K. Albers, and Gil McVean.
*Inferring whole-genome histories in large population datasets.*
Nature Genetics, 51(9):1330–1338, 2019.

## Challenges in inference

- segmentation of genomes into *shared haplotypes*
- hierarchical structuring into a *tree sequence*
- calibration of *node times*

## 

We need *metrics* for tree sequences.

. . .


> - Average tree distance along the genome?
> 
> - How to quantify haplotype sharing?
> 
> - Efficient computation? (should scale to millions of trees with millions of tips)

# Thanks

## Acknowledgements

Jerome, Jaime, and Kevin: 

[![Jerome](jerome.jpeg){width="30%"}](http://jeromekelleher.net/pages/about.html),
[![Jaime](jaime.jpg){width="30%"}](http://www.ashander.info/)
[![Kevin](kevin.jpeg){width="30%"}](https://github.com/molpopgen).

Funding: NSF (PR); Wellcome Trust (JK); NIH (KRT); USF&WS (JDA).

Slides with [reveal.js](http://hakim.se) and [pandoc](https://pandoc.org/).

<!-- questions?? -->
## {data-background-image="figs/guillemots_thanks.png" data-background-position=center data-background-size=50%}
