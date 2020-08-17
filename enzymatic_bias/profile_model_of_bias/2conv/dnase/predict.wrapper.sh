#!/bin/bash
#!/bin/bash
./predict.sh 0 3 bias.dnase.24mer.2conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase
./predict.k562.peaks.sh 0 3 bias.dnase.24mer.2conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase/peak_region_preds_k562
./predict.gm12878.peaks.sh 0 3 bias.dnase.24mer.2conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase/peak_region_preds_gm12878
