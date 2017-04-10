Demand(:,1)=();
Nm=max(Demand);
Sale(:,1)=();
Sm=max(Sale);
K(:,1)=();
X(:,1)=();
epsilon=0.00002;
kmax=max(K);
kworst=min(K);
xmax=max(X);
Vf=0.02;
a1=zeroes(No-of_runs,1);
for i=1:No_of_runs
    K1i=(K(i-1,1)-K(i,1))/(kworst-kmax);
    X1i=(X(i-1,1)-X(i,1))/(abs(X(1,i-1)-X(1,i))+epsilon);
    a1(i)=X(i,1)+K(i,1);
end
a=0;
for i=1:No_of_runs
    a_local=a+a1(i);
end
sum1=zeroes(No_of_runs,1);
for i=1:No_of_runs
    sum1(i)=(X(i,1)./K(i,1));
end
sum2=zeroes(No_of_runs,1);
for i=1:No_of_runs
    sum2(i)=(1./K(i,1));
end
sum11=0;
for i=1:No_of_runs
    sum11=sum11+sum1(i);
end
sum22=0;
for i=1:No_of_runs
    sum22=sum22+sum2(i);
end
xsale=sum11./sum22;
csale=2.*(rand(0,1)-(1./No_of_runs));
Cbest=2.*(rand(0,1)+(1./No_of_runs));
a_target=Cbest.*kmax.*xmax;
betasale=xsale+sm;
Fi=Vf.*betasale+Sale(No_of_runs-1,1);
a=a_local+a_target;
Ni=Nm.*a+w.*Demand(No_of_runs-1,1);
vakale=Fi+Ni;


