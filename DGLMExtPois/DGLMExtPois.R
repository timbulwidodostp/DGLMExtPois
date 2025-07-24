# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Double Generalized Linear Models Extending Poisson Regression Use glm.hP And glm.CMP (DGLMExtPois) With (In) R Software
install.packages("DGLMExtPois")
install.packages("Ecdat")
library("DGLMExtPois")
library("Ecdat")
DGLMExtPois = read.csv("https://raw.githubusercontent.com/timbulwidodostp/DGLMExtPois/main/DGLMExtPois/DGLMExtPois.csv",sep = ";")
# Estimation Double Generalized Linear Models Extending Poisson Regression Use glm.hP And glm.CMP (DGLMExtPois) With (In) R Software
DGLMExtPois$size.sq <- DGLMExtPois$size ^ 2
hP.bids <- glm.hP(formula.mu = numbids ~ leglrest + rearest + finrest + whtknght + bidprem + insthold + size + size.sq + regulatn, 
formula.gamma = numbids ~ 1, data = DGLMExtPois)
summary(hP.bids)
CMP.bids <- glm.CMP(formula.mu = numbids ~ leglrest + rearest + finrest + whtknght + bidprem + insthold + size + size.sq + regulatn, 
formula.nu = numbids ~ 1, data = DGLMExtPois)
summary(CMP.bids)
# Double Generalized Linear Models Extending Poisson Regression Use glm.hP And glm.CMP (DGLMExtPois) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished