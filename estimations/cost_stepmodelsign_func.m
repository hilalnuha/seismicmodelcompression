%% this code is developed by Hilal H. Nuha (nuha@teknoindonesia.com) 
% undersupervision of Dr. Bo Liu and Dr. M. Mohandes (CeGP)
% this code is designed for model based seismic data compression using
% particle swarm optimization (PSO). 
% Feel free to use this code and cite our papers related to seismic data
% compresssion


function costF=cost_stepmodelsign_func(x,T,L)
%a=x(1);
%h=x(2);
%T1=x(3);
%w=x(4);
%p=x(5);
%LL=1:L;
%model=a*exp(-h*(LL-T1)).*sin(w*(LL-T1)+p).*heaviside(LL-T1);

X=1:L;

Y=exp(-x(1)*abs(X-x(2)));
model=heaviside(X-x(2)).*Y.*sin(2*pi*x(3)*(X-x(2))+x(5)).*x(4);

size(T);
size(model);
diff=T-model';
size(diff);

costF=mse(diff)/mse(T);