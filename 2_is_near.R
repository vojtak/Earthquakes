
# function deciding whether eartquke event occurs near
# the selected location

is_near <- function(lat_test,lon_test, lat_origin, lon_origin) {
  
  if (abs(lat_test-lat_origin)<0.5 &&abs(lon_test-lon_origin)<0.5){
    TRUE
  } 
  else {
    FALSE
  }

}



# funcion selecting arrays that are near the location

close_quakes<-function(latitude,longitude){
  
  quake_data[mapply(is_near,quake_data$latitude,quake_data$longitude,latitude,longitude),]
  
}



# characteristic we want to plot

events_number <- function(lat,lon){
  
  quakes_selected<-close_quakes(lat,lon)
  nrow(quakes_selected[quakes_selected$mag>5,])
  
}

