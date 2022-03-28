pkgname <- "toydata"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('toydata')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("digit_return")
### * digit_return

flush(stderr()); flush(stdout())

### Name: digit_return
### Title: return the kth digit of x from the end of x
### Aliases: digit_return

### ** Examples

digit_return(x=789,k=3,opp=FALSE)
digit_return(x=-789,k=1,opp=FALSE)



cleanEx()
nameEx("outlier")
### * outlier

flush(stderr()); flush(stdout())

### Name: outlier
### Title: Mean after getting rid of outlier
### Aliases: outlier

### ** Examples

set.seed(123)
(myunif <- runif(20,1,10))
outlier(myunif,.10)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
