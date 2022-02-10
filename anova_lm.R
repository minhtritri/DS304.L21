
##### xet tuong tac giua cac tt crim, nox, rm, dis, rad, ptratio, lstat
#anova lan 1
av <- aov(MEDV ~ . - CHAS-B + CRIM*NOX*RM*DIS*RAD*PTRATIO*LSTAT, data = my_data)
summary(av)
#anova lan 2
av <- aov(MEDV ~ . - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)+ I(NOX*DIS*RAD*LSTAT)+ I(NOX*DIS*RAD*PTRATIO)
          + I(DIS*RAD*LSTAT)+ I(CRIM*DIS*LSTAT)+ I(NOX*RM*LSTAT)+ I(DIS*RAD*PTRATIO)+ I(NOX*DIS*PTRATIO)+ I(CRIM*NOX*DIS)
          + I(RAD*LSTAT)+ I(DIS*LSTAT)+ I(RM*LSTAT)+ I(NOX*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)+ I(CRIM*DIS)+ I(NOX*RM)
          + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)
#anova lan 3
av <- aov(MEDV ~ . - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)+ I(NOX*DIS*RAD*LSTAT)
          + I(DIS*RAD*LSTAT)+ I(NOX*RM*LSTAT)+ I(DIS*RAD*PTRATIO)
          + I(RAD*LSTAT)+ I(DIS*LSTAT)+ I(RM*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)
          + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)
##anova lan 4
av <- aov(MEDV ~ . - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)+ I(NOX*DIS*RAD*LSTAT)
          + I(DIS*RAD*LSTAT)+ I(NOX*RM*LSTAT)
          + I(RAD*LSTAT)+ I(DIS*LSTAT)+ I(RM*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)
          + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)
#build model lan 1
av <- lm(MEDV ~ . - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)+ I(NOX*DIS*RAD*LSTAT)
         + I(DIS*RAD*LSTAT)+ I(NOX*RM*LSTAT)
         + I(RAD*LSTAT)+ I(DIS*LSTAT)+ I(RM*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)
         + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)
#build model lan 2
av <- lm(MEDV ~ .-INDUS-CRIM - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)
         + I(RAD*LSTAT)+ I(DIS*LSTAT)+ I(RM*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)
         + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)
#build model lan 3
av <- lm(MEDV ~ .-PTRATIO-INDUS-CRIM - CHAS-B-NOX + I(CRIM*RAD*PTRATIO*LSTAT)
         + I(RAD*LSTAT)+ I(RM*LSTAT)+ I(RM*PTRATIO)+ I(RM*RAD)
         + I(CRIM*RM)+ I(CRIM*NOX), data = my_data)
summary(av)

