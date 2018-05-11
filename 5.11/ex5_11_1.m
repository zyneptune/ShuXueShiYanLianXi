%create the objective function
fitfcn = @(p,xdata)p(1)+(-p(2)+(sin((xdata(:,1).^2+xdata(:,2).^2).^0.5)).^2)/(p(3)+p(4)*(xdata(:,1).^2+xdata(:,2).^2)).^2;
rng default % for reproducibility
N = 200; %number of data points
preal = [0.5,0.5,1,0.001]; %real coefficients
xdata = 5*rand(N,2); %data points
ydata = fitfcn(preal,xdata); %response data
lb = [0.5,0.5,0.5,0];
ub = [1,1,1.5,0.002]; 
p0 = [0.5,0.5,1,0.001]; %set bounds and initial point
[xfitted,errorfitted] = lsqcurvefit(fitfcn,p0,xdata,ydata,lb,ub); %find the best local fit
problem = createOptimProblem('lsqcurvefit','x0',p0,'objective',fitfcn,'lb',lb,'ub',ub,'xdata',xdata,'ydata',ydata);
ms = MultiStart('PlotFcns',@gsplotbestf);
[xmulti,errormulti] = run(ms, problem, 50); %find a golbal solution 
%ezmesh('0.5+(-0.5+(sin((x.^2+y.^2).^0.5)).^2)/(1+0.001*(x.^2+y.^2)).^2'); %paint the plot of the target function to examine

%����������
%��С������Ͻ��errorfitted=0,����СֵΪ0�� xfitted = [0.5 0.5 1 0.001]����Ҫ��
%��������ý��errormulti=0,����СֵΪ0�� xmulti = [0.5 0.5 1 0.001]����Ҫ��
%��������СֵΪ0