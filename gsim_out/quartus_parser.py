import sys
import csv

graphs = ["G42", "amazon0302", "citeseer", "gemat11", "lock_700", "lshp1882", "mbeacxc", "orani678", "shl_200" ]
pipelines = ["1", "8", "16", "32"]
apps = ["bfs", "cc", "sssp"]
modules = ["ReadSrcProperty", "ReadSrcEdges", "ReadDstProperty", "ProcessEdge", "ControlAtomicUpdate", "ReadTempDstProperty", "Reduce", "WriteTempDstProperty", "ReadVertexProperty", "ReadTempVertexProperty", "Apply", "WriteVertexProperty"]

output_file = "quartus_merged.csv"
with open(output_file, "w") as o_f:
  for app in apps:
    for graph in graphs:
      d_line = [[],[],[],[],[]]
      for module in modules:
        for i in range(0,8):
          if(module == "ReadDstProperty"):
            for j in range(0,4):
              input_file = graph+"_"+app+"_"+module+"_"+str(i)+"_"+str(j)+"_pow.rpt"
              header = app+"_"+graph+"_8_"+module+"_"+str(i)+"_"+str(j)
              d_line[0].append(header)
              ln = 0;
              with open(input_file, "r") as i_f:
                for line in i_f:
                  if(ln > 40 and ln < 200):
                    if("Total Thermal Power Dissipation" in line):
                      d_line[0].append(line.strip().split(";")[1].split(" ")[0])
                    elif("Core Dynamic Thermal Power Dissipation" in line):
                      d_line[1].append(line.strip().split(";")[1].split(" ")[0])
                    elif("Core Static Thermal Power Dissipation" in line):
                      d_line[2].append(line.strip().split(";")[1].split(" ")[0])
                    elif("I/O Thermal Power Dissipation" in line):
                      d_line[3].append(line.strip().split(";")[1].split(" ")[0])
                  ln+=1
          else:
            input_file = graph+"_"+app+"_"+module+"_"+str(i)+"_pow.rpt"
            header = app+"_"+graph+"_8_"+module+"_"+str(i)
            d_line[0].append(header)
            ln = 0;
            with open(input_file, "r") as i_f:
              for line in i_f:
                if(ln > 40 and ln < 200):
                  if("Total Thermal Power Dissipation" in line):
                    d_line[0].append(line.strip().split(";")[1].split(" ")[0])
                  elif("Core Dynamic Thermal Power Dissipation" in line):
                    d_line[1].append(line.strip().split(";")[1].split(" ")[0])
                  elif("Core Static Thermal Power Dissipation" in line):
                    d_line[2].append(line.strip().split(";")[1].split(" ")[0])
                  elif("I/O Thermal Power Dissipation" in line):
                    d_line[3].append(line.strip().split(";")[1].split(" ")[0])
                ln+=1
      o_f.write(','.join(d_line[0])+"\n")
      o_f.write(','.join(d_line[1])+"\n")
      o_f.write(','.join(d_line[2])+"\n")
      o_f.write(','.join(d_line[3])+"\n")
      o_f.write(','.join(d_line[4])+"\n\n")

