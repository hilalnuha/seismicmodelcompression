trno=2;
ss=10;
load('datatest.mat')
load('pso_east_texas_M10_N10_id738357.mat')
datasam=data594Br(:,trno);
maxd=max(abs(datasam))*0.9;

subplot(2,3,1)
datasamn=datasam/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(a) Original Trace (ET)')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');

subplot(2,3,2)
datasamn=models(:,1,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(b) Single Component Reconstruction (ET) (M=1) ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');

subplot(2,3,3)
datasamn=(datasam-models(:,1,trno))/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(c) Residual (ET)')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');

trno=4;
load('datatestNS.mat')
load('pso_NS.mat')
datasam=data594Br(:,trno);
maxd=max(abs(datasam))*0.9;

subplot(2,3,4)
datasamn=datasam/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(d) Original Trace (NS)')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');

subplot(2,3,5)
datasamn=models(:,1,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(e) Single Component Reconstruction (NS) (M=1) ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');

subplot(2,3,6)
datasamn=(datasam-models(:,1,trno))/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([300 1000 -1 1 ]);
title('(f) Residual (NS)')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',ss);
set(gca,'FontWeight','normal');



x0=10;
y0=10;
width=1000;
height=300;
set(gcf,'units','points','position',[x0,y0,width,height])
