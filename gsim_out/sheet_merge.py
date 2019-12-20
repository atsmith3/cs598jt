import sys
import csv

graphs = ["G42", "amazon0302", "citeseer", "gemat11", "lock_700", "lshp1882", "mbeacxc", "orani678", "shl_200" ]
pipelines = ["1", "8", "16", "32"]
apps = ["bfs", "cc", "sssp"]

if(sys.argv[1] == "simulator"):
  output_file = "simulator_merge.csv"
  with open(output_file, "w") as o_f:
    for app in apps:
      for pipeline in pipelines:
        for graph in graphs:
          input_file = graph+"_"+app+"_"+pipeline+"_log.csv"
          header = graph+"_"+app+"_"+pipeline
          with open(input_file, "r") as i_f:
            o_f.write(header+"\n")
            for line in i_f:
              o_f.write(line.strip()+"\n")
            o_f.write("\n")
elif(sys.argv[1] == "dramsim"):
  output_file = "dramsim_merge.csv"
  with open(output_file, "w") as o_f:
    for app in apps:
      for pipeline in pipelines:
        for graph in graphs:
          input_file = graph+"_"+app+"_"+pipeline+"_dramsim.csv"
          header = graph+"_"+app+"_"+pipeline
          with open(input_file, "r") as i_f:
            o_f.write(header+"\n")
            for line in i_f:
              o_f.write(line.strip()+"\n")
            o_f.write("\n")
