install.packages("EValue")
library(EValue)

evalues.RD(92,53,140,179, true = 0)
# $est.Evalue
# [1] 2.25
# 
# $lower.Evalue
# [1] 1.72
# We could thus say, "With an observed risk difference of RD=-0.0604, 
# an unmeasured confounder that was associated with 
# both CHD and chronotropic incompetence by a risk ratio of 2.25-fold each, 
# above and beyond the measured confounders, could explain away the estimate, 
# but weaker confounding could not; to move the confidence interval 
# to include the null, an unmeasured confounder that was associated with 
# both CHD and chronotropic incompetence by a risk ratio of 
# 1.72-fold each could do so, but weaker confounding could not." 
# These would be the E-values for the null of no effect.

evalues.RD(92,53,140,179, true = 0.001)
# $est.Evalue
# [1] 2.24
# 
# $lower.Evalue
# [1] 1.71
hr.b$chr.tab <- ifelse(hr.b$chronotropic.index > 0.8674971,0,1)
with(hr.b,table(chd,chr.tab))
#       chr.tab
# chd   0   1
#   0 179 140
#   1  53  92
hr.b %>% 
  filter(chronotropic.index > 0.8674971) %>% 
  count()


hr.b$chr.tab <- ifelse(hr.b$chronotropic.index > 0.69,0,1)
with(hr.b,table(chd,chr.tab))
#       chr.tab
# chd   0   1
#   0 297  22
#   1 118  27
evalues.RD(27,118,22,297, true = 0)
# $est.Evalue
# [1] 4.84
# 
# $lower.Evalue
# [1] 2.54