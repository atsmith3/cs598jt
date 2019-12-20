#!/bin/bash

inputGraphs=('citeseer' 'gemat11' 'lock_700' 'lshp1882' 'mbeacxc' 'shl_200')
inputGraphs_large=('amazon0302' 'G42' 'orani678')
numPipelines=('1' '8' '16' '32')
apps=('bfs' 'cc' 'sssp')

#for graph in "${inputGraphs[@]}"; do
#  for app in "${apps[@]}"; do
#    for pipelines in "${numPipelines[@]}"; do
#      python dramsim_parser.py ${graph}_${app}_${pipelines}_dramsim.out
#    done
#  done
#done
for graph in "${inputGraphs[@]}"; do
  for app in "${apps[@]}"; do
    for pipelines in "${numPipelines[@]}"; do
      python out_parser.py ${graph}_${app}_${pipelines}_log.out ${pipelines} 8
    done
  done
done
for graph in "${inputGraphs_large[@]}"; do
  for app in "${apps[@]}"; do
    for pipelines in "${numPipelines[@]}"; do
      python out_parser.py ${graph}_${app}_${pipelines}_log.out ${pipelines} 8
    done
  done
done
