for cell_line in K562 HEPG2
do
    for split in `seq 0 4`
    do
	sbatch -J $cell_line.$split -o logs_explain/$cell_line.$split.o -e logs_explain/$cell_line.$split.e -t 1-0 -p akundaje,euan,owners explain.sh $cell_line $split
    done
done
