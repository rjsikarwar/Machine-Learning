 data1<-read.table("auto-mpg.data.modified", header=FALSE);
 data2=data.matrix(data1);
 testdata=(data2[5,]);
 
	 for(i in 1:nrow(data2))
	 {
		 if(i%%5==0&&i>5)
		 {
			testdata=rbind(testdata,data2[i,]);
		 }
		 if(i%%5==0)
		 {
		 data2[(-1)*i,];
		 }
	}
	 y=data2[,1];
	 rows=nrow(data2);
	 vec=rep(1,rows);
	 data2=data2[,-1];
	 x=cbind(vec,data2);
	 yactual=testdata[,1];
	 yactual=as.matrix(yactual);
	 testdata=testdata[,-1];
	 vec1=rep(1,nrow(testdata));
	 testdata=cbind(vec1,testdata);
	 y=as.matrix(y);
	 beta=(solve(t(x)%*%x))%*%t(x)%*%y;
	 predict=testdata%*%beta;	
	 print(predict)	
	 error=abs(predict-yactual);
	 plot(error, type="l"); title("Absolute error corresponding to each prediction") ;
 
