#CUDA_VISIBLE_DEVICES=2 kerasAC_predict --data_path K562.encode4crispr.regressionlabels.allbins.hdf5 \
#			--model_hdf5 DNASE.K562.regressionlabels.allbins.0 \
#			--batch_size 1000 \
#			--predict_chroms chr1 \
#			--threads 50 \
#			--max_queue_size 5000 \
#			--calibrate_regression \
#			--tasks K562_DNASE \
#			--predictions_pickle predictions.calibrated.0 \
#			--performance_metrics_regression_file accuracy.0 
#CUDA_VISIBLE_DEVICES=3 kerasAC_predict --data_path DNASE.K562.regressionlabels.allbins.hdf5 \
#		    --model_hdf5 DNASE.K562.regressionlabels.allbins.1 \
#		    --batch_size 1000 \
#		    --predict_chroms chr2 chr19 \
#		    --threads 30 \
#		    --max_queue_size 5000 \
#		    --predictions_pickle predictions.1 \
#		    --performance_metrics_regression_file accuracy.1 \
#		    --tasks K562_DNASE


#CUDA_VISIBLE_DEVICES=3 kerasAC_predict --data_path DNASE.K562.regressionlabels.allbins.hdf5 \
#		    --model_hdf5 DNASE.K562.regressionlabels.allbins.2 \
#		    --batch_size 1000 \
#		    --predict_chroms chr3 chr20 \
#		    --threads 30 \
#		    --max_queue_size 5000 \
#		    --predictions_pickle predictions.2 \
#		    --calibrate_regression \
#		    --performance_metrics_regression_file accuracy.2
#
#
