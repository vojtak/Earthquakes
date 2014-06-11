# latitudes and longitudes under consideration

lats<-seq(south_boundary+distance,north_boundary-distance,grid_spacing)
lons<-seq(west_boundary+distance,east_boundary-distance,grid_spacing)


# map of outputs

mapa<-matrix(0,nrow=length(lats),ncol=length(lons))


# earthquake characteristic corresponding to locations

for(lat in 1:length(lats)){
  for(lon in 1:length(lons)){
    mapa[lat,lon]=events_number(lats[lat],lons[lon])
  }
}

