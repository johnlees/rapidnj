Rapid neighbour-joining. An implementation of the canonical neighbour-joining method which utilize a fast search heuristic to reduce the running time. RapidNJ can be used to reconstruct large trees using a very small amount of memory by utilizing the HDD as storage.

USAGE: rapidnj INPUT [OPTIONS]
The INPUT can be a distance matrix in phylip (.phylip) format or a multiple alignment in stockholm (.sth) or phylip format (.phylip).
OPTIONS:
  -h, --help                display this help message and exit.
  -v, --verbose             turn on verbose output.
  -i, --input-format ARG    Specifies the type of input. pd = distance
                            matrix in phylip format, sth = multiple alignment in (single line) stockholm format.
                            fa = multiple alignment in (single line) FASTA format.
  -o, --output-format ARG   Specifies the type of output. t = phylogenetic tree in newick format
                            (default), m = distance matrix.
  -a, --evolution-model ARG Specifies which sequence evolution method to use when computing
                            distance estimates from multiple alignments. jc = juke cantor,
                            kim = Kimura's distance (default).
  -m, --memory-size         The maximum amount of memory which rapidNJ is allowed to use (in MB).
                            Default is 90% of all available memory.
  -k, --rapidnj-mem ARG     Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg'
                            specifies the percentage of a sorted distance matrix which should be
                            stored in memory (arg=10 means 10%).
  -d, --rapidnj-disk ARG    Force RapidNJ to use HDD caching where 'arg' is the directory used to
                            store cached files.
  -c, --cores ARG           Number of cores to use for computating distance matrices from multiple
                            alignments. All available cores are used by default.
  -b  --bootstrap ARG       Compute bootstrap values using ARG samples. The output tree will be
                            annotated with the bootstrap values.
  -t, --alignment-type ARG  Force the input alignment to be treated as: p = protein alignment, 
                            d = DNA alignment.
  -n  --no-negative-length  Adjust for negative branch lengths.
  -x  --output-file ARG     Output the result to this file instead of stdout.
