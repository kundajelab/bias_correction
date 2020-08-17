#generate tobias footprints for the canonical cell lines (DNASE)

#K562
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal K562.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak --output K562_optimal_footprints.bw --cores 50
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_idr/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_idr/execution/optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal K562.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-reproducibility_idr/execution/optimal_peak.narrowPeak --output K562_idr_footprints.bw --cores 50

#GM12878
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal GM12878.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/optimal_peak.narrowPeak --output GM12878_optimal_footprints.bw --cores 50
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/idr_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/idr_peak.narrowPeak
#TOBIAS FootprintScores --signal GM12878.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-reproducibility_overlap/execution/idr_peak.narrowPeak --output GM12878_idr_footprints.bw --cores 50

#H1ESC
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal H1ESC.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/optimal_peak.narrowPeak --output H1ESC_optimal_footprints.bw --cores 50
#zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/idr_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/idr_peak.narrowPeak
#TOBIAS FootprintScores --signal H1ESC.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-reproducibility_overlap/execution/idr_peak.narrowPeak --output H1ESC_idr_footprints.bw --cores 50

#HEPG2
zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_overlap/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_overlap/execution/optimal_peak.narrowPeak
TOBIAS FootprintScores --signal HEPG2.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_overlap/execution/optimal_peak.narrowPeak --output HEPG2_optimal_footprints.bw --cores 50

zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_idr/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_idr/execution/optimal_peak.narrowPeak
TOBIAS FootprintScores --signal HEPG2.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/ce805260-55f8-43c8-b2a1-a232b4a0e369/call-reproducibility_idr/execution/optimal_peak.narrowPeak --output HEPG2_optimal_footprints.bw --cores 50


#IMR90
zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_idr/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_idr/execution/optimal_peak.narrowPeak
TOBIAS FootprintScores --signal IMR90.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_idr/execution/optimal_peak.narrowPeak --output IMR90_optimal_footprints.bw --cores 50
zcat /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_overlap/execution/optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_overlap/execution/optimal_peak.narrowPeak
TOBIAS FootprintScores --signal IMR90.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/dnase/d754a34e-bc9f-4270-8020-bc37e8d195ba/call-reproducibility_overlap/execution/optimal_peak.narrowPeak --output IMR90_optimal_footprints.bw --cores 50
