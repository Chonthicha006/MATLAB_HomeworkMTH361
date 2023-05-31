x=-3:0.1:1;
X=[];
for i = 1:length(x)
    X=[X;x];
end
x0 = [-2;-1];
options = optimset('LargeScale','off');
options = optimset(options,'Display','iter');
[x,fval,exitflag,output] = fminunc(@funn,x0,options);

