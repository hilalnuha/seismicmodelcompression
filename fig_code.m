datasam=data594Br(:,2);
maxd=max(abs(datasam));
datasamn=datasam/maxd;
plot(datasamn,'k','linewidth',1.5)

x0=100;
y0=100;
width=550;
height=120;
axis([1 1501 -1 1 ]);
set(gcf,'units','points','position',[x0,y0,width,height])
%title('An Original Normalized Seismic Trace (#50)')
xlabel('Time Instant (k)')
ylabel('Amplitude')