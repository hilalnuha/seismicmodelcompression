trno=524;
datasam=data594Br(:,trno);
maxd=max(abs(datasam));

subplot(5,1,1)
datasamn=(datasam-models(:,1,trno))/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
%title('(a) Residual of modelling trace sample with M=1')
title('(a) M=1')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');


subplot(5,1,2)
datasamn=(datasam-sum(models(:,1:2,trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
%title('(b) Residual of modelling trace sample with M=2')
title('(b) M=2')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,3)
datasamn=(datasam-sum(models(:,1:3,trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
%title('(c) Residual of modelling trace sample with M=3')
title('(c) M=3')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,4)
datasamn=(datasam-sum(models(:,1:4,trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
%title('(d) Residual of modelling trace sample with M=4')
title('(d) M=4')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,5)
datasamn=(datasam-sum(models(:,1:5,trno)')')/maxd;
plot(datasamn,'k','linewidth',1.5)
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');
axis([1 1501 -1 1 ]);
%title('(e) Residual of modelling trace sample with M=5')
title('(e) M=5')
xlabel('Time Instant (k)')
ylabel('Amplitude')

x0=10;
y0=10;
width=550;
height=1200;
set(gcf,'units','points','position',[x0,y0,width,height])
