#generate tobias footprints for the canonical cell lines (ATAC) using optimal overlap peak regions 

#GM12878
#zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal GM12878.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak --output GM12878_optimal_footprints.bw --cores 50

#zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak
#TOBIAS FootprintScores --signal GM12878.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak --output GM12878_idr_footprints.bw --cores 50

#H1ESC
zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal H1ESC.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak --output H1ESC_optimal_footprints.bw --cores 25

zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal H1ESC.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak --output H1ESC_idr_footprints.bw --cores 25


#HEPG2
#zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal HEPG2.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak --output HEPG2_optimal_footprints.bw --cores 25

#zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal HEPG2.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak  --output HEPG2_idr_footprints.bw --cores 25

#IMR90
zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal IMR90.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_overlap/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/overlap.optimal_peak.narrowPeak --output IMR90_optimal_footprints.bw --cores 25

zcat /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak.gz > /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak
TOBIAS FootprintScores --signal IMR90.merged.filtered_corrected.bw --regions /oak/stanford/groups/akundaje/projects/atlas/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-reproducibility_idr/glob-1b1244d5baf1a7d98d4b7b76d79e43bf/idr.optimal_peak.narrowPeak --output IMR90_idr_footprints.bw --cores 25
