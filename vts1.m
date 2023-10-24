ctd = load('Ramses_Deployment3_CTD_L1.mat');
eco = load('Ramses_Deployment3_CTD_L1.mat');
% salini = intepr1(ctd.ptime_datenum, ctd.salinCorrected, eco.ptime_datenum);
% tempi = interp1(ctd.ptime_datenum, ctd.temp, eco.ptime_datenum);



imon=str2num(datestr(ctd.ptime_datenum(end),'mm'));

figure;

set(gcf,'visible','on','renderer','painter');
h1=cplot(ctd.salinCorrected,ctd.temp,ctd.ptime_datenum);
hold on;
set(h1,'linestyle','none','marker','.');
% add on T/S ellipses
hupper=plot(squeeze(shelf.Supper(imon,1,:))',squeeze(shelf.Tupper(imon,1,:))', 'LineWidth',2, 'Color','m', 'DisplayName', 'SAB Upper');
hupper2=plot(squeeze(shelf.Supper(imon,2,:))',squeeze(shelf.Tupper(imon,2,:))', 'LineWidth',2, 'Color','b', 'DisplayName', 'MAB Upper');

hlower=plot(squeeze(shelf.Slower(imon,1,:))',squeeze(shelf.Tlower(imon,1,:))', 'LineWidth',2, 'Color', '#D95319', 'DisplayName', 'SAB Lower');
hlower2=plot(squeeze(shelf.Slower(imon,2,:))',squeeze(shelf.Tlower(imon,2,:))', 'LineWidth',2, 'Color', 'g', 'DisplayName', 'MAB Lower');

hgs=plot(squeeze(slope.Supper(imon,1,:))',squeeze(slope.Tupper(imon,1,:))', 'LineWidth',2,'Color','r', 'DisplayName', 'Gulf Stream');
hslope=plot(squeeze(slope.Supper(imon,2,:))',squeeze(slope.Tupper(imon,2,:))','LineWidth',2,'Color','b', 'DisplayName', 'Slope Sea');
% set([hupper;hlower;hgs;hslope],'linewidth',2);
% set(hupper(1),'color','m'); set(hupper(2),'color','b');
% set(hlower(1),'color',rgb('orange')); set(hlower(2),'color','g');
% set(hgs,'color','r'); set(hslope,'color',rgb('MidnightBlue'));

% draw on isopycnals
xl=get(gca,'xlim'); yl=get(gca,'ylim'); ssl=xl(1):diff(xl)/25:xl(end); ttl=yl(1):diff(yl)/25:yl(end);
cl=get(gca,'clim');
[ss,tt]=meshgrid(ssl,ttl); rr=sw_dens(ss,tt,0*ss); rvals=unique(round(rr));
[c,h]=contour(ssl,ttl,rr,rvals); set(h,'color',[.6 .6 .6]); clabel(c,h);
set(gca,'clim',cl); hc=colorbar; datetick(hc,'y'); axis tight;
% hleg=legend([hupper,hlower,hgs,hslope],'SAB upper','MAB upper','SAB lower','MAB lower','GS','SS');
legend('Location', 'SouthEast');
xlabel('salinity (psu)'); ylabel('temperature (deg C)');
title(['climatological T/S elllipses for ',datestr(ctd.ptime_datenum(end),'mmm')]);
timestamp('GMT ',4);
% print('-djpeg90',[imgdir,gstruct.vname,'_tsdiagram.jpg']);close

%export_fig ('/Users/victornguyen/Documents/MATLAB/Ramses/Ramses Salinity vs Temperature/R7ST.png', '-m3', '-nocrop');
