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
         "character",  #updated
         "character",  #place
         "factor")     #type
         
quake_data<-read.table("data/quakes.csv",
                       sep=','
                       ,header=TRUE,
                       colClasses=types)


