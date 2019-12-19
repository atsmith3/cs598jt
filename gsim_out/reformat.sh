#!/bin/bash

inputGraphs=('soc_Slashdot0902' 'amazon0302' 'citeseer' 'G42' 'gemat11' 'lock_700' 'lshp1882' 'mbeacxc' 'orani678' 'shl_200')
numPipelines=('1' '8' '16' '32')
apps=('bfs' 'cc' 'sssp')

for graph in "${inputGraphs[@]}"; do
  for app in "${apps[@]}"; do
    for pipelines in "${numPipelines[@]}"; do
      python dramsim_parser.py ${graph}_${app}_${pipelines}_dramsim.out
    done
  done
done
