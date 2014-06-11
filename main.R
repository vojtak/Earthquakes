
print(paste("main script start        ", Sys.time() ))



print(paste("data load start          ", Sys.time() ))
source("0_parameters.R")
source("1_load_data.R")
print(paste("data load finish         ", Sys.time() ))



source("2_is_near.R")
print(paste("functions defined        ", Sys.time() ))

print(paste("map caculation start     ", Sys.time() ))
source("3_map_output.R")
print(paste("map caculation finish    ", Sys.time() ))

print(paste("plot start               ", Sys.time() ))
source("4_plot.R")
print(paste("plot finish              ", Sys.time() ))

print(paste("main script finish       ", Sys.time() ))
