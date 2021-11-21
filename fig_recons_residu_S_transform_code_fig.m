close all
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
width=550+275;
height=120+60;
fonsize=12;
figure

set(gcf,'units','points','position',[x0,y0,width,height])
%title('An Original Normalized Seismic Trace (#50)')
xlabel('Time Instant (k)')
ylabel('Amplitude')
datasam=data594Br(:,trno);
maxd=max(abs(datasam))*1;
range1=1;
range2=1501;

[stt,t,f] = st(datasam');
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(a) S-transform time-frequency mapping of the original trace ')
%title('(b)  M=2')
set(gca,'FontSize',fonsize);
%%

figure
set(gcf,'units','points','position',[x0,y0,width,height])

[stt,t,f] = st(sum(models(:,[1:2],trno)'));
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(b) S-transform time-frequency mapping of the reconstructed trace (M=2)')
set(gca,'FontSize',fonsize);

figure
set(gcf,'units','points','position',[x0,y0,width,height])

[stt,t,f] = st(sum(models(:,[1:4],trno)'));
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(c) S-transform time-frequency mapping of the reconstructed trace (M=4)')
set(gca,'FontSize',fonsize);

figure
set(gcf,'units','points','position',[x0,y0,width,height])

[stt,t,f] = st(sum(models(:,[1:6],trno)'));
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(d) S-transform time-frequency mapping of the reconstructed trace (M=6)')
set(gca,'FontSize',fonsize);

figure
set(gcf,'units','points','position',[x0,y0,width,height])

[stt,t,f] = st(sum(models(:,[1:8],trno)'));
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(e) S-transform time-frequency mapping of the reconstructed trace (M=8)')
set(gca,'FontSize',fonsize);

figure
set(gcf,'units','points','position',[x0,y0,width,height])

[stt,t,f] = st(sum(models(:,[1:10],trno)'));
s = surf(1:1501,1:751,abs(stt));
s.EdgeColor = 'none';
axis([0 1502 0 200 ]);
xlabel('Time')
ylabel('Frequency')
view(2)
colorbar

title('(f) S-transform time-frequency mapping of reconstructed trace (M=10)')
set(gca,'FontSize',fonsize);

%%
x0=0;
y0=-100;
width=1000;
height=600;
%set(gcf,'units','points','position',[x0,y0,width,height])
