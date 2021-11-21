%% this code is developed by Hilal H. Nuha (nuha@teknoindonesia.com) 
% undersupervision of Dr. Bo Liu and Dr. M. Mohandes (CeGP)
% this code is designed for model based seismic data compression using
% particle swarm optimization (PSO). 
% Feel free to use this code and cite our papers related to seismic data
% compresssion

close
load('datatestNS.mat', 'data594Br')

%L=1501;
M=1;% number of model (We used M=20)
[baris kolom]=size(data594Br);


NN=1;% number of seismic traces in the dataset (we used NN=kolom);
models=zeros(baris,M,NN);
varenergy=zeros(M,NN);
waktu=zeros(M,NN);

for trno=1:NN
T=data594Br(1:2560,trno);
L=max(size(T));
Tori=T;

model=0;
mseM=zeros(1,M);
for m=1:M
tic
% x(1)=1;
% x(2)=1;
% x(3)=1;5
% x(4)=1;
% cost_model_func(x,T,L);


nvars=5;
fun = @(x)cost_stepmodelsign_func(x,T,L);

%limn=[0.1 200 0.8 200];
%Ta=iac(T,1:L,1.5,0);
segmenL=500;
startind=floor(m/3)*segmenL;

maxindAll=find(T==max(T(startind+1:min(startind+segmenL,L))));
maxind=maxindAll(1);%startind+

aftrace=abs(fft(T((max(maxind-100,1):min(maxind+100,L)))));
maxfi=find(aftrace==max(aftrace));
freqest=1/(maxfi(1));



%lb = [0 0.2*maxind 6*freqest 0.5*abs(T(maxind))];
lb = [0 0.2*maxind 0.1*freqest 0.5*abs(T(maxind)) -pi];
%lb = -ones(nvars,1);
%ub = [0.09 2*maxind 16*freqest 16*abs(T(maxind))];
ub = [0.1 2*maxind 2.5*freqest 2.6*abs(T(maxind)) pi];

%options = optimoptions('particleswarm','MaxIter',10,'SwarmSize',5,'Display','iter','InitialSwarmSpan',limn*2);
options = optimoptions('particleswarm','MaxIter',100,'SwarmSize',100,'Display','final');

[r,fval,exitflag,out6] = particleswarm(fun,nvars,lb,ub,options);

X=1:L;
tmax=max(T);
%Y = gampdf(X,A,B);
%r(1)=0.0;

Y=exp(-r(1)*abs(X-r(2)));

s=heaviside(X-r(2)).*Y.*sin(2*pi*r(3)*(X-r(2))+r(5)).*r(4);
mseM(m)=var(s'-T);
model=model+s';
T=T-s';
models(:,m,trno)=s';

mse(Tori-model)/mse(Tori)
[trno m]
twak=toc
waktu(m,trno)=twak;
end

mseM/var(Tori);
varenergy(:,trno)=mseM/var(Tori)

end

plot([model Tori ]);
save(['pso_east_texas_M' num2str(M) '_N' num2str(NN) '_id' num2str(ceil(now)) ],'models','varenergy','waktu');