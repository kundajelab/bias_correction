rm(list=ls())
library(ggplot2)
spearmanr=read.table("TIER1.regression.spearmanr",header=TRUE,sep='\t')
pearsonr=read.table("TIER1.regression.pearsonr",header=TRUE,sep='\t')
spearmanr_nonzero=read.table("TIER1.regression.spearmanr_nonzerobins",header=TRUE,sep='\t')
pearsonr_nonzero=read.table("TIER1.regression.pearsonr_nonzerobins",header=TRUE,sep='\t')
auroc=read.table("TIER1.classification.auroc",header=TRUE,sep='\t')
auprc=read.table("TIER1.classification.auprc",header=TRUE,sep='\t')
p1=ggplot(data=spearmanr,
          aes(x=spearmanr$Dataset,y=spearmanr$Value,group=spearmanr$Analysis,fill=spearmanr$Analysis))+
  geom_bar(stat='identity',position="dodge")+
  xlab("Inputs")+
  ylab("Spearmanr")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position = "none")

p2=ggplot(data=pearsonr,
          aes(x=pearsonr$Dataset,y=pearsonr$Value,group=pearsonr$Analysis, fill=pearsonr$Analysis))+
  geom_bar(stat='identity',position='dodge')+
  xlab("Inputs")+
  ylab("Pearsonr")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position = "none")

p3=ggplot(data=spearmanr_nonzero,
          aes(x=spearmanr_nonzero$Dataset,y=spearmanr_nonzero$Value,group=spearmanr_nonzero$Analysis, fill=spearmanr_nonzero$Analysis))+
  geom_bar(stat='identity',position='dodge')+
  xlab("Inputs")+
  ylab("Spearmanr NonZero Bins")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position='none')

p4=ggplot(data=pearsonr_nonzero,
          aes(x=pearsonr_nonzero$Dataset,y=pearsonr_nonzero$Value,group=pearsonr_nonzero$Analysis, fill=pearsonr_nonzero$Analysis))+
  geom_bar(stat='identity',position='dodge')+
  xlab("Inputs")+
  ylab("Pearsonr NonZero Bins")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position="none")

p5=ggplot(data=auprc,
          aes(x=auprc$Dataset,y=auprc$Value,group=auprc$Analysis, fill=auprc$Analysis))+
  geom_bar(stat='identity',position='dodge')+
  xlab("Inputs")+
  ylab("auPRC")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position="none")

p6=ggplot(data=auroc,
          aes(x=auroc$Dataset,y=auroc$Value,group=auroc$Analysis,fill=auroc$Analysis))+
  geom_bar(stat='identity',position='dodge')+
  xlab("Inputs")+
  ylab("auROC")+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90))+
  theme(legend.position="bottom")+
  scale_fill_discrete(name="")
source("~/helpers.R")
multiplot(p1,p2,p3,p4,p5,p6,cols=3)