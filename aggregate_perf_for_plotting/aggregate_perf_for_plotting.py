import argparse
import pandas as pd
import pdb 
def parse_args():
    parser=argparse.ArgumentParser(description="aggregate performance metrics across cell lines/ folds")
    parser.add_argument("--metric_files",nargs="+")
    parser.add_argument("--metric_file_labels",nargs="+")
    parser.add_argument("--metric_name")
    parser.add_argument("--datasets",nargs="+")
    parser.add_argument("--outf")
    return parser.parse_args()
def main():
    args=parse_args()
    all_vals=dict() 
    for i in range(len(args.metric_files)):
        fname=args.metric_files[i]
        flabel=args.metric_file_labels[i]
        all_vals[flabel]=dict() 
        data=pd.read_table(fname,header=0,sep='\t')
        metric_vals=data[data['Metrics']==args.metric_name][args.datasets].mean(axis=0)
        for task in args.datasets:
            all_vals[flabel][task]=metric_vals.loc[task]
    outf=open(args.outf,'w')
    outf.write('Analysis\tDataset\tValue\n')
    for flabel in all_vals:
        for task in all_vals[flabel]:
            outf.write(flabel+'\t'+task+'\t'+str(all_vals[flabel][task])+'\n')
    outf.close()
    
if __name__=="__main__":
    main()
    
