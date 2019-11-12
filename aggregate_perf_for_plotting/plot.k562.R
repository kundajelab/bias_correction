rm(list=ls())
library(ggplot2)
spearmanr=read.table("K562.regression.spearmanr",header=TRUE,sep='\t')
pearsonr=read.table("K562.regression.pearsonr",header=TRUE,sep='\t')
spearmanr_nonzero=read.table("K562.regression.spearmanr_nonzerobins",header=TRUE,sep='\t')
pearsonr_nonzero=read.table("K562.regression.pearsonr_nonzerobins",header=TRUE,sep='\t')
auroc=read.table("K562.classification.auroc",header=TRUE,sep='\t')
auprc=read.table("K562.classification.auprc",header=TRUE,sep='\t')
p1=ggplot(data=spearmanr,
          aes(x=spearmanr$Analysis,y=spearmanr$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("Spearmanr")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))


p2=ggplot(data=pearsonr,
          aes(x=pearsonr$Analysis,y=pearsonr$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("Pearsonr")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))

p3=ggplot(data=spearmanr_nonzero,
          aes(x=spearmanr_nonzero$Analysis,y=spearmanr_nonzero$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("Spearmanr NonZero Bins")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))

p4=ggplot(data=pearsonr_nonzero,
          aes(x=pearsonr_nonzero$Analysis,y=pearsonr_nonzero$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("Pearsonr NonZero Bins")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))

p5=ggplot(data=auprc,
          aes(x=auprc$Analysis,y=auprc$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("auPRC")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))

p6=ggplot(data=auroc,
          aes(x=auroc$Analysis,y=auroc$Value))+
  geom_bar(stat='identity')+
  xlab("Inputs")+
  ylab("auROC")+
  theme_bw(20)+
  theme(axis.text.x = element_text(angle = 90))
source("~/helpers.R")
multiplot(p1,p2,p3,p4,p5,p6,cols=3)