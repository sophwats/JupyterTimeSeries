gsub('.*-([0-9]+).*','\\1', obama[1,4])
obama[1]
dim(obama)
head(obama)

store_datas<-as.data.frame(matrix(nrow=31, ncol=24))
for(ii in 1:nrow(obama)){
  
  to_extract<-as.character(obama[ii,4])
  store_datas[ii,]<-as.numeric(unlist(strsplit(as.character(to_extract), "[^0-9]+")))[-1]
  
}



as.numeric(unlist(strsplit(as.character(to_extract), "[^0-9]+")))[-1]

length(as.numeric(unlist(strsplit(as.character(to_extract), "[^0-9]+"))))
