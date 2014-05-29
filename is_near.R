is_near <- function(lat_test,lon_test, lat_origin, lon_origin) {
  
  if ((lat_test-lat_origin)<0.5 &&(lon_test-lon_origin)<0.5){
    TRUE
  } 
  else {
    FALSE
  }

}
