# coastline

points<-vector("logical",30)
points[1]<-TRUE
coast<-read.table(coastline_file_path)[points,]



# density plot

source("Z_image_scale.R")


# taking care of outliers (somethig strange happen at IZU in 2000 :) )

count<-0
dif<-1
while(dif>0){ 
  maximum<-max(mapa)
  if(maximum-max(mapa[mapa<0.95*maximum])>0.2*maximum){
    top<-max(mapa[mapa<0.95*maximum])
  } else{
    top<-maximum
  }
  mapa[mapa>=0.95*maximum]<-top
  dif<-maximum-top
  count<-count+1
}


# defining color scheme

breaks <- seq(min(mapa), top,length.out=top-1)
pal.1=colorRampPalette(c("white", "red","brown"), space="rgb")


# actual plot

layout(matrix(c(1,2), nrow=2, ncol=1),heights=c(20,6))

par(mar=c(5, 3, 2, 2))    
par(pty="s")

image(lons,lats,t(mapa),col=pal.1(length(breaks)-1), breaks=breaks,
      asp=1,
      xlab="longitude",ylab="latitude")
points(coast,pch=1,cex=0.2)


par(mar=c(4, 3,2, 2))
par(pty="m")
image.scale(mapa, col=pal.1(length(breaks)-1), breaks=breaks, horiz=TRUE,xlab="color scale")


