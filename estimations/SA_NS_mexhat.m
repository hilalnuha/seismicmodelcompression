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


NN=5;% number of seismic traces in the dataset (we used NN=kolom);
models=zeros(baris,M,NN);
varenergy=zeros(M,NN);

tic
for trno=1:NN
%    for trno=5
T=data594Br(1:2560,trno);
L=max(size(T));
Tori=T;

model=0;
mseM=zeros(1,M);
for m=1:M
% x(1)=1;
% x(2)=1;
% x(3)=1;5
% x(4)=1;
% cost_model_func(x,T,L);


nvars=5;
fun = @(x)cost_mexhat_func(x,T,L);

%limn=[0.1 200 0.8 200];
%Ta=iac(T,1:L,1.5,0);
segmenL=220;
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
%options = optimoptions('particleswarm','MaxIter',100,'SwarmSize',100,'Display','iter');
%options = optimoptions('ga','PopulationSize',100,'MaxGenerations',100,'Display','iter');


%xx2=[4.64493063945851 -506 54341088];
xx5=[4.25405631670031 -459 56095576];

options = optimoptions(@simulannealbnd,'MaxFunctionEvaluations',10000);
%options.InitialTemperature = 100;

%[r,fval,exitflag,out6] = ga(fun,nvars,[],[],[],[],lb,ub,[],[],options);
[r,fval,exitflag,out6] = simulannealbnd(fun,xx5,[-10 -2560 min(T)],[10 2560 max(T)],options);
%[r,fval,exitflag,out6] = simulannealbnd(fun,xx5,[],[],options);

%[r,fval,exitflag,out6] = ga(fun,nvars,lb,ub,options);

X=1:L;
tmax=max(T);
%Y = gampdf(X,A,B);
%r(1)=0.0;


s=(r(3)/r(1))*(1-((X+r(2))/r(1)).^2).*exp(-((X+r(2))/(2*r(1))).^2);

mseM(m)=var(s'-T);
model=model+s';
T=T-s';
models(:,m,trno)=s';
end

mseM/var(Tori);
mse(Tori-model)/mse(Tori)
varenergy(:,trno)=mseM/var(Tori)

end
waktu=toc
plot([model Tori ]);
save('ga_east_texas','models','varenergy','waktu');