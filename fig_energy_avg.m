trno=524;
ener=varenergy(:,trno);


subplot(3,1,1)

plot(mean(varenergy')*100,'-bx','linewidth',1.5, 'MarkerEdgeColor','k')
axis([0 21 0 80]);
set(gca,'XTick',[1:1:21]);
set(gca,'YTick',[0:10:80]);

%title('(a) Normalised Residual Energy on Average')
title('(a)')
xlabel('Number of Model Components')
ylabel('Normalised Residual Energy (%)')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');
grid


subplot(3,1,2)
plot(1501./(5:5:100),'-bx','linewidth',1.5, 'MarkerEdgeColor','k')
axis([0 21 0 350]);
set(gca,'XTick',[1:1:21]);
grid
%title('(b) Compression Ratio with Residual discarded')
title('(b)')
xlabel('Number of Model Components')
ylabel('Compression Ratio')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(3,1,3)
plot(1501./(5:5:100),mean(varenergy')*100,'-bx','linewidth',1.5, 'MarkerEdgeColor','k')
axis([0 300 0 80]);
%set(gca,'XTick',[1501./(5:5:100)]);
grid
%title('(c) Normalized Residual Energy with Compression Ratio')
title('(c)')
xlabel('Compression Ratio')
ylabel('Normalized Residual Energy(%) ')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

x0=10;
y0=10;
width=550;
height=600;
set(gcf,'units','points','position',[x0,y0,width,height])
