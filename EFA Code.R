## --- Assignment five
## --- Exploratory factor analysis 

install.packages("GPArotation")

library(lavaan)
library(psych)
library(GPArotation)

## 2. locating the data

HSdata <- assign5


## 3. Running the Parallel analysis

fa.parallel(HSdata, fa = "fa", n.iter = 50)


## EFA four factors 

efa_fourf <- fa(HSdata, nfactors = 4, fm = "minres", rotate = "oblimin")
print(efa_fourf)


round(efa_fourf$communalities, digits = 3)
print(efa_fourf$loadings, cutoff = .3)
round(efa_fourf$Phi, digits = 3)

print(efa_fourf$loadings, cutoff = .3)

 
## EFA five factors 

efa_fivef <- fa(HSdata, nfactors = 5, fm = "minres", rotate = "oblimin")
print(efa_fivef)

round(efa_fivef$communalities, digits = 3)
print(efa_fivef$loadings, cutoff = .3)
round(efa_fivef$Phi, digits = 3)

print(efa_fivef$loadings, cutoff = .3)


## EFA six factors 

efa_sixf <- fa(HSdata, nfactors = 6, fm = "minres", rotate = "oblimin")
print(efa_sixf)

round(efa_sixf$communalities, digits = 3)
print(efa_sixf$loadings, cutoff = .3)
round(efa_sixf$Phi, digits = 3)

print(efa_sixf$loadings, cutoff = .3)



## EFA seven factors 

efa_sevenf <- fa(HSdata, nfactors = 7, fm = "minres", rotate = "oblimin")
print(efa_sevenf)

round(efa_sevenf$communalities, digits = 3)
print(efa_sevenf$loadings, cutoff = .3)
round(efa_sevenf$Phi, digits = 3)


print(efa_sevenf$loadings, cutoff = .3)







