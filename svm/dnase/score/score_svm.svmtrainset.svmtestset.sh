preds_prefix=/oak/stanford/groups/akundaje/projects/GECCO/SVM/
mkdir SVM_perf_svmtestset
python score_svm.py \
       --predictions_on_pos_regions /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.0.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.1.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.2.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.3.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.4.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.5.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.6.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.7.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.8.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.9.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.0.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.1.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.2.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.3.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.4.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.5.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.6.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.7.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.8.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.9.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.0.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.1.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.2.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.3.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.4.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.5.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.6.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.7.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.8.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.9.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.0.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.1.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.2.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.3.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.4.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.5.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.6.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.7.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.8.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.9.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.0.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.1.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.2.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.3.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.4.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.5.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.6.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.7.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.8.positives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.9.positives \
       --predictions_on_neg_regions /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.0.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.1.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.2.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.3.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.4.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.5.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.6.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.7.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.8.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/GM12878/predictions/predictions.GM12878.9.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.0.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.1.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.2.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.3.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.4.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.5.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.6.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.7.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.8.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/H1ESC/predictions/predictions.H1ESC.9.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.0.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.1.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.2.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.3.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.4.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.5.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.6.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.7.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.8.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/HEPG2/predictions/predictions.HEPG2.9.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.0.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.1.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.2.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.3.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.4.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.5.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.6.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.7.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.8.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/IMR90/predictions/predictions.IMR90.9.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.0.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.1.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.2.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.3.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.4.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.5.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.6.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.7.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.8.negatives /oak/stanford/groups/akundaje/projects/encode_tier1_lines/SVM/K562/predictions/predictions.K562.9.negatives \
       --outf SVM_perf_svmtestset
