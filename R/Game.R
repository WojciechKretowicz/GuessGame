Game <- function(range=10, trials=3) {
  x <- sample(1:range, 1)
  i <- 1
  win <- FALSE
  
  while(i <= trials) {
    guess <- as.integer(readline(prompt = 'Enter your guess: '))
    
    if(guess == x) {
      win <- TRUE
      break
    }
    else if(guess < x) {
      print('x is greater than number you provided!')
      i <- i+1
    }
    else {
      print('x is smaller than number you provided!')
      i <- i+1
    }
  }
  
  if(win)
    print('Congratulations! You won!')
  else
    print(paste0('You lose! The x is equal to ',x))
}