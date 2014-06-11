
# types of inputs in the table of earthquakes

types<-c("POSIXct",    #time
         "numeric",    #latitude
         "numeric",    #longitude
         "numeric",    #depth
         "numeric",    #mag
         "factor",     #magType
         "numeric",    #nst
         "numeric",    #gap
         "numeric",    #dmin
         "numeric",    #rms
         "character",  #net
         "character",  #id
         "POSIXct",    #updated
         "character",  #place
         "factor")     #type


# loading data

quake_data<-read.table("data/quakes.csv",
                       sep=','
                       ,header=TRUE,
                       colClasses=types)


