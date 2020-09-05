for cell_line in K562 HEPG2
do
    for split in `seq 0 4`
    do
	for chunk in `seq 0 9`
	do
	sbatch -J $chunk.$cell_line.$split -o logs_explain/$chunk.$cell_line.$split.o -e logs_explain/$chunk.$cell_line.$split.e -t 1-0 -p akundaje,euan,owners explain.sh $cell_line $split $chunk 
	done
    done
done
