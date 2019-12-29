# create matrix from given vectors 

data_free_throws <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
data_free_throws

rm(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
colnames(data_free_throws) <- Seasons
rownames(data_free_throws) <- Players

# free throw attempts
data_free_throws_attempts <- cbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)

rm(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
colnames(data_free_throws_attempts) <- Seasons
rownames(data_free_throws_attempts) <- Players

#Plots

#(a) Free Throw Attempts per game

myplot <- function(z, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(data_free_throws)
myplot(data_free_throws_attempts)

myplot(data_free_throws_attempts/Games)

# (b) Accuracy of Free Throws
myplot(data_free_throws/data_free_throws_attempts)

#(c) Player playing style (2 vs 3 points preference) excluding Free Throws*
Points
data_free_throws
d <- (Points - data_free_throws)/FieldGoals
myplot(d)




