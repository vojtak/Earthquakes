# latitudes and longitudes under consideration

lats<-seq(20.5,49.5,0.25)
lons<-seq(120.5,149.5,0.25)


# map of outputs

mapa<-matrix(0,nrow=length(lats),ncol=length(lons))


# earthquake characteristic corresponding to locations

for(lat in 1:length(lats)){
  for(lon in 1:length(lons)){
    mapa[lat,lon]=events_number(lats[lat],lons[lon])
  }
}

