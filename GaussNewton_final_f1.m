function  GaussNewton_final_f1(t,y)
tol = 0.0005; % tolerance
 x= [0.3,6];   % initial value [a0,a1]
iter_max = 100; % maximum iteration number
n = 8;  % number of data points

disp('iterations     x0        x1        da0        da1');
for iter = 1:iter_max
    x1 = x(1);
    x2 = x(2);
    for i =1:n
        f(i) = exp(x2*t(i))*x1;
        j(i,1) = exp(x2*t(i)); %เทียบx1
        j(i,2) = t(i)*x1*exp(x2*t(i)); %เทียบx2
        d(i) = y(i) -f(i);
    end
    da = (j'*j)\(j'*d');
    x = x + da';
    out = [iter x da'];
    disp(out);
    if (abs(da(1)) < tol && abs(da(2)) < tol)
        disp('Gauss-Newton method has converged.');
        break
    end
end

t1 = min(t);
t2 = max(t);
tt = linspace(t1,t2,100);
yy =exp(x2*t(i))*x1; %f(x1,x2)
%plot(xx,yy,x,y,'ro');
P = plot(tt,yy,t,y,'ro');
set(P,'LineWidth',2,'MarkerSize',5);
text(1,1,...
    ['f(x) =' num2str(x1) '.exp(' num2str(x2) 't)'],...
    'FontSize',18);



