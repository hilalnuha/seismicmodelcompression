trno=2;
datasam=data594Br(:,trno);
maxd=max(abs(datasam))*0.9;

subplot(5,1,1)
datasamn=models(:,6,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
title('(a) s_1 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');


subplot(5,1,2)
datasamn=models(:,7,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
title('(b) s_2 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,3)
datasamn=models(:,8,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
title('(c) s_3 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,4)
datasamn=models(:,11,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
axis([1 1501 -1 1 ]);
title('(d) s_4 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');

subplot(5,1,5)
datasamn=models(:,12,trno)/maxd;
plot(datasamn,'k','linewidth',1.5)
set(gca,'FontSize',8);
set(gca,'FontWeight','normal');
axis([1 1501 -1 1 ]);
title('(e) s_5 ')
xlabel('Time Instant (k)')
ylabel('Amplitude')

x0=10;
y0=10;
width=550;
height=1200;
set(gcf,'units','points','position',[x0,y0,width,height])
