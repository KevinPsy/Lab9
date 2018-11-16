
#Q1
odd_count = function(x) {
  odd <- NULL
  odd=x%%2
  return(sum(odd==0))
}


odd_count1 = function(x){
  odd_num = 0
  for (i in 1:length(x)){
    if (x[i]%%2==1)
      odd_num = odd_num + 1
  }
  return(odd_num)
} 

x<-c(2,1,4,5,6,8,9,3,4)

microbenchmark(odd_count(x),
               odd_count1(x))

#Q2

sort_vec = function(x,ascending=TRUE) {

  if (ascending==TRUE){
  if (length(x) < 2) {
    return (x)
  }
  last <- length(x)
  first <- 1
  temp <- NULL
  for (last in length(x):2) { 
    for (first in 1:(last - 1)) { 
      if (x[first] > x[first + 1]) { 
        temp = x[first] 
        x[first] = x[first + 1] 
        x[first + 1] = temp 
      } 
    } 
  }
  }
  
  if (ascending==FALSE){
    if (length(x) < 2) {
      return (x)
    }
    last <- length(x)
    first <- 1
    temp <- NULL
    for (last in length(x):2) { 
      for (first in 1:(last - 1)) { 
        if (x[first] < x[first + 1]) { 
          temp = x[first] 
          x[first] = x[first + 1] 
          x[first + 1] = temp 
        } 
      } 
    }
  }
  
  return(x)
}

sort_vec(c(3,1,2),FALSE)
sort_vec(c(3,1,2),TRUE)

#Q3
N = 1000 
data_series = 0 
system.time({for (i in 2:N){ data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) } }) 

data_series2<-rep(0,N)
system.time({for (i in 2:N){ data_series2[i] = data_series2[i-1] + sample(c(-1, 1), 1)} })

N = 10000 
data_series = 0 
system.time({for (i in 2:N){ data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) } }) 

data_series2<-rep(0,N)
system.time({for (i in 2:N){ data_series2[i] = data_series2[i-1] + sample(c(-1, 1), 1)} })

N = 100000 
data_series = 0 
system.time({for (i in 2:N){ data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) } }) 

data_series2<-rep(0,N)
system.time({for (i in 2:N){ data_series2[i] = data_series2[i-1] + sample(c(-1, 1), 1)} })

