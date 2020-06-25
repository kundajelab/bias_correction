import argparse
import pyBigWig
import pandas as pd
import numpy as np
import pdb 
from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib.colors import Normalize 
from scipy.interpolate import interpn
from scipy.stats import spearmanr, pearsonr
def parse_args():
    parser=argparse.ArgumentParser(description="get bigwig correlations at specific regions")
    parser.add_argument("--bigwig1")
    parser.add_argument("--bigwig2")
    parser.add_argument("--regions")
    parser.add_argument("--title1")
    parser.add_argument("--title2")
    parser.add_argument("--outf")
    return parser.parse_args()

def main():
    args=parse_args()
    regions=pd.read_csv(args.regions,header=None,sep='\t')
    bw1=pyBigWig.open(args.bigwig1,'r')
    bw2=pyBigWig.open(args.bigwig2,'r')
    title1=args.title1
    title2=args.title2
    bw1_vals=None
    bw2_vals=None
    spearman_cors=[]
    pearson_cors=[] 
    for index,row in regions.iterrows():
        print(index)
        chrom=row[0]
        start=row[1]
        end=row[2]
        cur_vals1=np.nan_to_num(bw1.values(chrom,start,end))
        cur_vals2=np.nan_to_num(bw2.values(chrom,start,end))
        #get the correlation
        cur_spearman_cor=round(spearmanr(cur_vals1,cur_vals2)[0],2)
        cur_pearson_cor=round(pearsonr(cur_vals1,cur_vals2)[0],2)
        spearman_cors.append(cur_spearman_cor)
        pearson_cors.append(cur_pearson_cor)
    #plot distribution of spearman/pearson distributions
    fig, axs = plt.subplots(1, 2, sharey=True, tight_layout=True)
    # We can set the number of bins with the `bins` kwarg
    axs[0].hist(spearman_cors, bins=100)
    axs[1].hist(pearson_cors, bins=100)
    axs[0].set_xlabel('Spearman R')
    axs[1].set_xlabel('Pearson R')
    axs[0].set_ylabel('# of mappable regions on chr1',fontsize=8)
    axs[1].set_ylabel('# of mappable regions on chr1',fontsize=8)
    fig.suptitle(args.title1+" vs "+args.title2,fontsize=10)
    fig.set_size_inches(6, 3)
    plt.savefig(args.outf,format='png',dpi=300)    

def density_scatter(x, y, xlab, ylab, figtitle, pngtitle, ax = None, sort = True, bins = 20):
    """
    Scatter plot colored by 2d histogram
    """
    if ax is None :
        fig , ax = plt.subplots()
    data , x_e, y_e = np.histogram2d( x, y, bins = bins, density = True )
    z = interpn( ( 0.5*(x_e[1:] + x_e[:-1]) , 0.5*(y_e[1:]+y_e[:-1]) ) , data , np.vstack([x,y]).T , method = "splinef2d", bounds_error = False)
    #To be sure to plot all data
    z[np.where(np.isnan(z))] = 0.0
    # Sort the points by density, so that the densest points are plotted last
    if sort :
        idx = z.argsort()
        x, y, z = x[idx], y[idx], z[idx]
    ax.scatter( x, y, c=z )
    norm = Normalize(vmin = np.min(z), vmax = np.max(z))
    cbar = fig.colorbar(cm.ScalarMappable(norm = norm), ax=ax)
    cbar.ax.set_ylabel('Density')
    plt.xlabel(xlab)
    plt.ylabel(ylab)
    plt.title(figtitle)
    plt.legend(loc='best')
    plt.savefig(pngtitle,format='png',dpi=300)    
    return ax

    
if __name__=="__main__":
    main()
    
