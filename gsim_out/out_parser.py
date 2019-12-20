import sys
import csv

input_file = sys.argv[1]
output_file = input_file.split('.')[0] + ".csv"

#graphs = ["G42", "amazon0302", "citeseer", "gemat11", "lock_700", "lshp1882", "mbeacxc", "orani678", "shl_200" ]
#pipelines = [1, 8, 16, 32]

pipelines=int(sys.argv[2])
max_iter=int(sys.argv[3])

csvs = []
out_csv = []
data_header = []
data_header.append("Iteration")
for i in range(0,pipelines):
  data_header.append("p"+str(i)+"_RSP_Accept")
  data_header.append("p"+str(i)+"_RSP_Processing")
  data_header.append("p"+str(i)+"_RSP_Pipe")
  data_header.append("p"+str(i)+"_RSP_Mem")
  data_header.append("p"+str(i)+"_RSP_ItemsProcessed")
  data_header.append("p"+str(i)+"_RSE_Accept")
  data_header.append("p"+str(i)+"_RSE_Processing")
  data_header.append("p"+str(i)+"_RSE_Pipe")
  data_header.append("p"+str(i)+"_RSE_Mem")
  data_header.append("p"+str(i)+"_RSE_ItemsProcessed")
  data_header.append("p"+str(i)+"_ALL_Throughput")
  data_header.append("p"+str(i)+"_ALL_ItemsProcessed")
  for j in range(0,4):
    data_header.append("p"+str(i)+"_RDP"+str(j)+"_Accept")
    data_header.append("p"+str(i)+"_RDP"+str(j)+"_Processing")
    data_header.append("p"+str(i)+"_RDP"+str(j)+"_Pipe")
    data_header.append("p"+str(i)+"_RDP"+str(j)+"_Mem")
    data_header.append("p"+str(i)+"_RDP"+str(j)+"_ItemsProcessed")
  data_header.append("p"+str(i)+"_ARB_Throughput")
  data_header.append("p"+str(i)+"_ARB_ItemsProcessed")
  data_header.append("p"+str(i)+"_PE_Accept")
  data_header.append("p"+str(i)+"_PE_Processing")
  data_header.append("p"+str(i)+"_PE_Pipe")
  data_header.append("p"+str(i)+"_PE_Mem")
  data_header.append("p"+str(i)+"_PE_ItemsProcessed")
  data_header.append("p"+str(i)+"_CAU_Accept")
  data_header.append("p"+str(i)+"_CAU_Processing")
  data_header.append("p"+str(i)+"_CAU_Pipe")
  data_header.append("p"+str(i)+"_CAU_Mem")
  data_header.append("p"+str(i)+"_CAU_ItemsProcessed")
  data_header.append("p"+str(i)+"_RTDP_Accept")
  data_header.append("p"+str(i)+"_RTDP_Processing")
  data_header.append("p"+str(i)+"_RTDP_Pipe")
  data_header.append("p"+str(i)+"_RTDP_Mem")
  data_header.append("p"+str(i)+"_RTDP_ItemsProcessed")
  data_header.append("p"+str(i)+"_RED_Accept")
  data_header.append("p"+str(i)+"_RED_Processing")
  data_header.append("p"+str(i)+"_RED_Pipe")
  data_header.append("p"+str(i)+"_RED_Mem")
  data_header.append("p"+str(i)+"_RED_ItemsProcessed")
  data_header.append("p"+str(i)+"_WTDP_Accept")
  data_header.append("p"+str(i)+"_WTDP_Processing")
  data_header.append("p"+str(i)+"_WTDP_Pipe")
  data_header.append("p"+str(i)+"_WTDP_Mem")
  data_header.append("p"+str(i)+"_WTDP_ItemsProcessed")
  data_header.append("p"+str(i)+"_WTDP_Tick")
  data_header.append("p"+str(i)+"_RVP_Accept")
  data_header.append("p"+str(i)+"_RVP_Processing")
  data_header.append("p"+str(i)+"_RVP_Pipe")
  data_header.append("p"+str(i)+"_RVP_Mem")
  data_header.append("p"+str(i)+"_RVP_ItemsProcessed")
  data_header.append("p"+str(i)+"_RTVP_Accept")
  data_header.append("p"+str(i)+"_RTVP_Processing")
  data_header.append("p"+str(i)+"_RTVP_Pipe")
  data_header.append("p"+str(i)+"_RTVP_Mem")
  data_header.append("p"+str(i)+"_RTVP_ItemsProcessed")
  data_header.append("p"+str(i)+"_APP_Accept")
  data_header.append("p"+str(i)+"_APP_Processing")
  data_header.append("p"+str(i)+"_APP_Pipe")
  data_header.append("p"+str(i)+"_APP_Mem")
  data_header.append("p"+str(i)+"_APP_ItemsProcessed")
  data_header.append("p"+str(i)+"_WVP_Accept")
  data_header.append("p"+str(i)+"_WVP_Processing")
  data_header.append("p"+str(i)+"_WVP_Pipe")
  data_header.append("p"+str(i)+"_WVP_Mem")
  data_header.append("p"+str(i)+"_WVP_ItemsProcessed")
  data_header.append("p"+str(i)+"_WVP_Tick")
for i in range(0,pipelines):
  data_header.append("XBar_Out_"+str(i))
data_header.append("CACHE_hit")
data_header.append("CACHE_miss")
data_header.append("CACHE_sread")
data_header.append("CACHE_swrite")
data_header.append("CACHE_rread")
data_header.append("CACHE_rwrite")
data_header.append("CACHE_prefetch")
data_header.append("CACHE_writeback")
data_header.append("GLOBAL_ticks")
data_header.append("GLOBAL_EdgesProcessed")
data_header.append("GLOBAL_Throughput")
data_header.append("PROCESS_Duration")
data_header.append("APPLY_Duration")


# Read in all the files:
curr_csv = []
with open(input_file, "r") as i_f:
  iteration = 0
  first = True
  pipeline = 0
  csv_line = []
  for line in i_f:
    #print(line)
    split_line = line.strip().split(",")
    if("ITERATION" in line):
      if( not first):
        curr_csv.append(csv_line)
        csv_line = []
      csv_line.append(iteration)
      iteration += 1
      pipeline = -1
      first=False
    elif("Pipeline" in line):
      pipeline += 1
    elif(("Global T" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[3])
      csv_line.append(split_line[5])
    elif(("Phase" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[2])
    elif(("ReadSrcProperty" in line) or
       ("ReadSrcEdges" in line) or
       ("ReadDstProperty" in line) or
       ("ProcessEdge" in line) or
       ("ControlAtomicUpdate" in line) or
       ("ReadTempDstProperty" in line) or
       ("Reduce" in line) or
       ("ReadVertexProperty" in line) or
       ("ReadTempVertexProperty" in line) or
       ("Apply" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[2])
      csv_line.append(split_line[3])
      csv_line.append(split_line[4])
      csv_line.append(split_line[5])
    elif(("Allocator" in line) or
       ("Arbiter" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[2])
    elif(("WriteVertex" in line) or
       ("WriteTemp" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[2])
      csv_line.append(split_line[3])
      csv_line.append(split_line[4])
      csv_line.append(split_line[5])
      csv_line.append(split_line[6])
    elif(("output_distribution" in line)):
      for i in range(0,pipelines):
        csv_line.append(split_line[3+i])
    elif(("Cache" in line)):
      csv_line.append(split_line[1])
      csv_line.append(split_line[2])
      csv_line.append(split_line[3])
      csv_line.append(split_line[4])
      csv_line.append(split_line[5])
      csv_line.append(split_line[6])
      csv_line.append(split_line[7])
      csv_line.append(split_line[8])
      if(iteration == max_iter - 1):
        csv_line.append("0")
        csv_line.append("0")
        csv_line.append("0")
        csv_line.append("0")
        csv_line.append("0")
  curr_csv.append(csv_line)


with open(output_file, "w") as o_f:
  writer = csv.writer(o_f)
  writer.writerow(data_header)
  for row in curr_csv:
    writer.writerow(row)
