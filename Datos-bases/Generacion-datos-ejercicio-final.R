data("barley")
barley

data("USMortality")
USMortality

barley.1 <- barley
usm <- USMortality

s1 <- sample(1:4, 8, replace = T)
s2 <- sample(1:120, 8)

s3 <- sample(1:5, 8, replace = T)
s4 <- sample(1:40, 8)

for(i in 1:8){
    barley.1[s2[i],s1[i]] <- NA
    usm[s4[i],s3[i]] <- NA
}

write.csv(barley.1, "Datos-bases/Barley.csv")
write.csv(usm, "Datos-bases/USMortality.csv")


