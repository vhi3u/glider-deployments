%Preloading file 
v = input("Deployment Number: ");
eco_name = sprintf("Ramses_Deployment%i_ECO_L1.mat", v);

r3b = load(eco_name);

filterA

% trimming first 100 values of each variable because it is invalid
% r3b.ptime_datenum = r3b.ptime_datenum(2:end);
% r3b.depth = r3b.depth(2:end);
% r3b.chlor = r3b.chlor(2:end);
% r3b.cdom = r3b.cdom(2:end);
% r3b.scatter = r3b.scatter(2:end);
% baseChlor = baseChlor(2:end);
% baseCDOM = baseCDOM(2:end);
% baseScatter = baseScatter(2:end);
% spikeChlor = spikeChlor(2:end);
% spikeCDOM = spikeCDOM(2:end);
% spikeScatter = spikeScatter(2:end);

% figure
% plot(r3b.ptime_datenum, r3b.chlor)
% hold on
% plot(r3b.ptime_datenum,baseChlor)
spikeplusChlor = spikeChlor;
spikeplusChlor(spikeChlor > 0) = spikeChlor(spikeChlor > 0)+baseChlor(spikeChlor > 0);
% plot(r3b.ptime_datenum,spikeplusChlor, 'r.')
% title(sprintf('%s',file_name),"Chlorophyll with Spikes",'Interpreter','none')
% export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses/ramsesMasterfigures/spikeChlor.png', '-m3', '-nocrop');
% hold off

% figure
% plot(r3b.ptime_datenum, r3b.cdom)
% hold on
% plot(r3b.ptime_datenum, baseCDOM)
spikeplusCDOM = spikeCDOM;
spikeplusCDOM(spikeCDOM > 0) = spikeCDOM(spikeCDOM > 0)+baseCDOM(spikeCDOM > 0);
% plot(r3b.ptime_datenum,spikeplusCDOM, 'r.')
% title(sprintf('%s',file_name),"CDOM with Spikes",'Interpreter','none')
% export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses/ramsesMasterfigures/spikeCdom.png', '-m3', '-nocrop');
% hold off

% figure
% plot(r3b.ptime_datenum, r3b.scatter)
% hold on
% plot(r3b.ptime_datenum, baseScatter)
spikeplusScatter = spikeScatter;
spikeplusScatter(spikeScatter > 0) = spikeScatter(spikeScatter > 0)+baseScatter(spikeScatter > 0);
% plot(r3b.ptime_datenum,spikeplusScatter, 'r.')
% title(sprintf('%s',file_name),"Scatter with Spikes",'Interpreter','none')
% export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses/ramsesMasterfigures/spikeScatter.png', '-m3', '-nocrop');
% hold off

% histECO

%ranges used to plot the chlor/cdom/scatter were from previous graphs. 

%plotting chlorophyll original, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.chlor, [0 3], '.',10);
datetick
colorbar
caxis([0 3])
title(sprintf('Ramses Deployment %i Chlorophyll',v),"Original",'Interpreter','none')
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseChlor, [0 3], '.',10);
datetick
colorbar
caxis([0 3])
title('\rmBase')
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeChlor, [0 3], '.',10);
datetick
colorbar
caxis([0 3])
title('\rmSpike')
export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses Spiked ECO PNG/Ramses7_spikeChlor.png', '-m3', '-nocrop');

%plotting colored dissolve organic matter original, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.cdom, [0 3],'.',10);
datetick
colorbar
caxis([0 3])
title(sprintf('Ramses Deployment %i CDOM',v),"Original",'Interpreter','none')
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseCDOM, [0 3],'.',10);
datetick
colorbar
caxis([0 3])
title('\rmBase')
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeCDOM, [0 3],'.',10);
datetick
colorbar
caxis([0 3])
title('\rmSpike')
export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses Spiked ECO PNG/Ramses7_spikeCDOM.png', '-m3', '-nocrop');

%plotting backscattering organic, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.scatter, [0 0.004],'.',10);
datetick
colorbar
caxis([0 0.004])
title(sprintf('Ramses Deployment %i Scatter',v),"Original",'Interpreter','none')
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseScatter, [0 0.004],'.',10);
datetick
colorbar
caxis([0 0.004])
title('\rmBase')
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeScatter, [0 0.004],'.',10);
datetick
colorbar
caxis([0 0.004])
title('\rmSpike')
export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses Spiked ECO PNG/Ramses7_spikeSpike.png', '-m3', '-nocrop');
