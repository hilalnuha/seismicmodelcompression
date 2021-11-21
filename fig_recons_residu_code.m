
load('datatest.mat')
load('pso_east_texas_M10_N10_id738357.mat')
%load('pso_east_texas.mat')

trno=2;
datasam=data594Br(:,trno);
maxd=max(abs(datasam));
datasamn=datasam/maxd;
%subplot(5,1,1)
%plot(datasamn,'k','linewidth',1.5)
%title('(a)  Original')
%axis([1 1501 -1 1 ]);
x0=100;
y0=100;
width=550;
height=120;


set(gcf,'units','points','position',[x0,y0,width,height])
%title('An Original Normalized Seismic Trace (#50)')
xlabel('Time Instant (k)')
ylabel('Amplitude')




datasam=data594Br(:,trno);
maxd=max(abs(datasam))*1;
range1=1;
range2=1501;

subplot(4,2,1)
datasamn=sum(models(:,[1:2],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
title('(a) Reconstructed Trace Sample with M=2 ')
%title('(b)  M=2')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');


subplot(4,2,2)
datasamn=(datasam-sum(models(:,[1:2],trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
title('(b) Residual with M=2 (\gamma=0.21)')
%title('(b)  M=2')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');


subplot(4,2,3)
datasamn=sum(models(:,[1:4],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(b) Reconstructed Trace Sample with M=2')
title('(c) Reconstructed Trace Sample with M=4 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(4,2,4)
datasamn=(datasam-sum(models(:,[1:4],trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
title('(d) Residual with M=4 (\gamma=0.15)')
%title('(b)  M=2')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(4,2,5)
datasamn=sum(models(:,[1:8],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(c) Reconstructed Trace Sample with M=3')
title('(e) Reconstructed Trace Sample with M=8')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(4,2,6)
datasamn=(datasam-sum(models(:,[1:8],trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
title('(f) Residual with M=8 (\gamma=0.08)')
%title('(b)  M=2')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(4,2,7)
datasamn=sum(models(:,[1:10],trno)')'/maxd;
%datasamn=sum(models(:,[1:20],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(d) Reconstructed Trace Sample with M=4')
title('(g) Reconstructed Trace Sample with M=10')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(4,2,8)
datasamn=(datasam-sum(models(:,[1:10],trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
title('(h) Residual with M=10 (\gamma=0.06)')
%title('(b)  M=2')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');
%subplot(5,1,5)
%datasamn=sum(models(:,[6 7 8 11 12],trno)')'/maxd;
%plot(datasamn,'k','linewidth',1.5)
%set(gca,'FontSize',8);
%set(gca,'FontWeight','normal');
%axis([range1 range2 -1 1 ]);
%title('(e) Reconstructed Trace Sample with M=5')
%title('(e) M=5')

%xlabel('Time Instant (k)')
%ylabel('Amplitude')

x0=10;
y0=10;
width=800;
height=500;
set(gcf,'units','points','position',[x0,y0,width,height])
