file_name = input("Please enter the name of the file: ");
r3b = load(file_name);
%run graphECO_3.m first before using this
filterA
% Histograms of original chlor, base, and spike
figure
subplot(311);
histogram(r3b.chlor)
% xlim([-1 30]);
title(sprintf('%s',file_name),'Chlorophyll Original Histogram','Interpreter','none')
subplot(312);
histogram(baseChlor)
% xlim([-1 30]);
title(sprintf('%s',file_name),'Chlorophyll Baseline Histogram','Interpreter','none')
subplot(313)
histogram(spikeChlor)
% xlim([-1 30]);
title(sprintf('%s',file_name),'Chlorophyll Spike Histogram','Interpreter','none')

figure
subplot(311);
histogram(r3b.cdom)
% xlim([-1 80]);
title(sprintf('%s',file_name),'CDOM Original Histogram','Interpreter','none')
subplot(312);
histogram(baseCDOM)
% xlim([-1 10]);
title(sprintf('%s',file_name),'CDOM Baseline Histogram','Interpreter','none')
subplot(313)
histogram(spikeCDOM)
% xlim([2 80]);
% ylim([0 1000]);
title(sprintf('%s',file_name),'CDOM Spike Histogram','Interpreter','none')

figure
subplot(311);
histogram(r3b.scatter)
xlim([0 1e-2]);
title(sprintf('%s',file_name),'Scatter Original Histogram','Interpreter','none')
subplot(312);
histogram(baseScatter)
xlim([0 1e-2]);
title(sprintf('%s',file_name),'Scatter Baseline Histogram','Interpreter','none')
subplot(313)
histogram(spikeScatter)
xlim([0 1e-2]);
title(sprintf('%s',file_name),'Scatter Spike Histogram','Interpreter','none')