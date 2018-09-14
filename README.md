# RapidNJ

RapidNJ is an algorithmic engineered implementation of canonical
neighbour-joining. It uses an efficient search heuristic to speed-up
the core computations of the neighbour-joining method that enables
RapidNJ to outperform other state-of-the-art neighbour-joining
implementations. The RapidNJ method was originally presented in:

* Rapid Neighbour Joining. Martin Simonsen, Thomas Mailund and
  Christian N. S. Pedersen. In Proceedings of the 8th Workshop in
  Algorithms in Bioinformatics (WABI), LNBI 5251, 113-122, Springer
  Verlag, October 2008. doi:10.1007/978-3-540-87361-7_10


Further development of RapidNJ has improved the search heuristic,
decreased memory consumption and enabled the utilization of external
memory. It also includes an efficient computation of distance
estimators from input alignments. These improvements allow the current
implementation of RapidNJ to handle very large datasets (50,000+ taxa)
efficiently on a normal desktop computer. Papers describing these
improvements are:

* Inference of Large Phylogenies using Neighbour-Joining. Martin
  Simonsen, Thomas Mailund, Christian N. S. Pedersen. Communications
  in Computer and Information Science (Biomedical Engineering Systems
  and Technologies: 3rd International Joint Conference, BIOSTEC 2010,
  Revised Selected Papers), volume 127, pages 334-344, Springer
  Verlag, 2011. (Extended version of a paper published at BIOSTEC
  2010).

* Rapid Computation of Distance Estimators from Nucleotide and Amino
  Acid Alignments. Martin Simonsen, Christian N. S. Pedersen. In
  Proceedings of 26th Annual ACM Symposium on Applied Computing (SAC
  2011), ACM Press, March 2011.

Current version is 2.3.2:

* Fixed bug in bootstrap algorithm which caused the bootstrap values
  to be lower than the true value in most cases.

* Fixed bug that caused the last two branches made to have the wrong
  distance.

# Prerequisites

RapidNJ has been developed and tested on Linux (Ubuntu version 8.10)
running on an Intel Pentium compatible CPU. It has also been tested on
OS X and Windows. Compiling RapidNJ requires gcc version 2.1 (or
higher). On Windows you should be able to use Visual Studie or Cygwin.

# Installation

Unpack the source code:

$ unzip rapidnj-src-2.3.2.zip

Compile the program using the included Makefile (on some older systems
it might be necessary to remove the flag '-flax-vector-conversions'
from the makefile):

$ cd rapidNJ

$ make

After a succesful compilation the binary 'rapidnj' can be found in the
subdirectory 'bin'. You can e.g. copy this binary to a directory in
your search path for easier access.

# Usage

Executing the binary 'rapidnj' with no arguments will produce a help
message containing the syntaxt and a list of options. RapidNJ will
accept two different input formats. Distance matrices in phylip format
and alignments in stockholm format. The program can usually guess the
input format, otherwise the -i option can be used to choose between
different formats. Support for phylip formatted multiple alignments is
also included but might not work with all methods for computation of
distance matrices.

To infer a tree from an alignment in Stockholm format use the
following command

$ rapidnj FILENAME -i sth

where FILENAME is the name of the file with the alignment.

The program will automatically switch between three different versions
of the rapidNJ algorithm depending on the size of the tree and the
amount of available memory. Several options are available to force a
specific algorithm to be used.

# Contact

Christian N. S. Pedersen <cstorm@birc.au.dk>,
Bioinformatics Research Centre, Aarhus University




