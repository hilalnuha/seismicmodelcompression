trno=2;
ener=varenergy(:,trno);


subplot(2,1,1)

plot(ener*100,'-bx','linewidth',1.5, 'MarkerEdgeColor','k')
axis([1 21 0 90]);
set(gca,'XTick',[1:1:21]);
%title('(a) Normalised Residual Energy of the Trace sample')
title('(a)')
xlabel('Number of Model Components')
ylabel('Normalised Residual Energy (%)')
set(gca,'FontSize',10);
set(gca,'FontWeight','normal');
grid


subplot(2,1,2)
plot((ener(1:19)-(ener(2:20)))*100,'-bx','linewidth',1.5, 'MarkerEdgeColor','k')
axis([1 21 0 50]);
set(gca,'XTick',[1:1:21]);
grid
%title('(b) Energy Drop Rate  of the Trace sample')
title('(b)')
xlabel('Model Component')
ylabel('Residual Energy Drop Rate(%)')
set(gca,'FontSize',10);
set(gca,'FontWeight','normal');

x0=10;
y0=10;
width=550;
height=400;
set(gcf,'units','points','position',[x0,y0,width,height])
