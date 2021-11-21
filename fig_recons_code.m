
load('datatest.mat')
%load('pso_east_texas_M10_N10_id738357.mat')
load('pso_east_texas.mat')

trno=2;
datasam=data594Br(:,trno);
maxd=max(abs(datasam));
datasamn=datasam/maxd;
subplot(5,1,1)
plot(datasamn,'k','linewidth',1.5)
title('(a)  Original')
axis([1 1501 -1 1 ]);
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

subplot(5,1,2)
datasamn=models(:,6,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(a) Reconstructed Trace Sample with M=1')
title('(b)  M=1')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');


subplot(5,1,3)
datasamn=sum(models(:,[6 7 8 17],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(b) Reconstructed Trace Sample with M=2')
title('(c) M=4')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,4)
datasamn=sum(models(:,[17 4 6 7 8 13 15],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(c) Reconstructed Trace Sample with M=3')
title('(d) M=7')

xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,5)
datasamn=sum(models(:,[4 6 7 8 11 12 13  15  16 17   ],trno)')'/maxd;
%datasamn=sum(models(:,[1:20],trno)')'/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([range1 range2 -1 1 ]);
%title('(d) Reconstructed Trace Sample with M=4')
title('(e) M=10')

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
width=550;
height=200;
set(gcf,'units','points','position',[x0,y0,width,height])
