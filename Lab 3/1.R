probFunc <- function(A, B, C, da, db, dc, fac) {
  tot = (A * da) + (B * db) + (C * dc)
  if (fac == 'A') {
    prob <- (A * da)/tot 
  }
  else if (fac == 'B') {
    prob <- (B * db)/tot
  }
  else prob <- (C * dc)/tot
  return(prob)
}

probFunc(0.15, 0.35, 0.5, 0.01, 0.05, 0.02, "A")