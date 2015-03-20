Species<-function(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width){
    data<-c((Sepal.Length-5.843)/0.828,(Sepal.Width-3.057)/0.436,
            (Petal.Length-3.758)/1.765,(Petal.Width-1.199)/0.762)
    centers<-data.frame(A<-c(-1.01119138,0.85041372,-1.3006301,-1.2507035),
                    B<-c(-0.05005221,-0.88042696,0.3465767,0.2805873),
                    C<-c(1.13217737,0.08812645,0.9928284,1.0141287))
    names(centers)<-c("setosa","versicolor","virginica")
    d<-c()
    for(i in 1:3){
        d[i]<-sqrt((data[1]-centers[1,i])^2+(data[2]-centers[2,i])^2+(data[3]-centers[3,i])^2+(data[4]-centers[4,i])^2)
    }
    var<-ifelse(which.min(d) == 1, "setosa", ifelse(which.min(d)== 2,"versicolor","virginica"))
    var
}