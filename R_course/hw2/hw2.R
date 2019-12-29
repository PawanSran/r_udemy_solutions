?rnorm

N <- 1000
numbers <- rnorm(N)

#mean(numbers)
count <-0
for(i in numbers) {
  if(i > -1 && i < 1)
    count <- count+1
}

#ratio of numbers which met the condition
num_ratio <- count/N
num_ratio
