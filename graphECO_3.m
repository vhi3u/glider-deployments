%preload glider deployment .mat file
r3b = load('Ramses_Deployment3_ECO_L1.mat');

%trimming first 100 values of each variable because it is invalid
r3b.ptime_datenum = r3b.ptime_datenum(100:end);
r3b.depth = r3b.depth(100:end);
r3b.chlor = r3b.chlor(100:end);
r3b.cdom = r3b.cdom(100:end);
r3b.scatter = r3b.scatter(100:end);
baseChlor = baseChlor(100:end);
baseCDOM = baseCDOM(100:end);
baseScatter = baseScatter(100:end);
spikeChlor = spikeChlor(100:end);
spikeCDOM = spikeCDOM(100:end);
spikeScatter = spikeScatter(100:end);

%plotting chlorophyll original, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.chlor, [0 5], '.',10);
datetick
title("Chlorophyll Original")
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseChlor, [0 3.75], '.',10);
datetick
title("Chlorophyll Base")
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeChlor, [-1 30], '.',10);
datetick
title("Chlorophyll Spike")
hold off

%plotting colored dissolve organic matter original, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.cdom, [0 3],'.',10);
datetick
title("CDOM Original")
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseCDOM, [0 3],'.',10);
datetick
title("CDOM Base")
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeCDOM, [0 75],'.',10);
datetick
title("CDOM Spike")
hold off

%plotting backscattering organic, base, scatter
figure
subplot(311)
ccplot(r3b.ptime_datenum,-r3b.depth,r3b.scatter, [0 0.008300],'.',10);
datetick
title("Scatter Original")
subplot(312)
ccplot(r3b.ptime_datenum,-r3b.depth,baseScatter, [0 0.008300],'.',10);
datetick
title("Scatter Base")
subplot(313)
ccplot(r3b.ptime_datenum,-r3b.depth,spikeScatter, [0 0.008300],'.',10);
datetick
title("Scatter Spike")
hold off