R=8.3145;
T=294.15;
F=96485;
% pk=1;
Ko=5.4;
% pn=0.05;
No=80;
Ki=210;
Ni=5;
% pc=0.45;
% C0=110;
% C1=10;
% V=(R*T/F)*log((pk*K0+pn*N0+pc*C1)/(pk*K1+pn*N1+pc*C0))
% V=(R*T/F)*log((pk*K0+pn*N0)/(pk*K1+pn*N1))
% V=(R*T/F)*log((K0+(pn/pk)*N0)/(K1+(pn/pk)*N1))
% p=pn/pk;
% p=0.06;
% V = GHK(p,Ko,Ki,No,Ni)
% Kinside=[5,10,15,20,25,30,35];
% V=zeros(1,length(Kinside));
% for i=1:length(Kinside)
%     V(i) = GHK(p,Ko,Kinside(i),No,Ni);
% end
pk=140;
pn=17;
Koutside=[5,10,15,25,35,100,150,180,200];
p=zeros(1,length(pk));
for i=1:length(pk)
    V=zeros(1,length(Koutside));
    for j=1:length(Koutside)  
        p(i)=pn(i)/pk(i);
        V(j) = GHK(p,Koutside(j),Ki,No,Ni);
    end
    semilogx(Koutside,V)
    hold on
end
xlabel ('K outside (mM)')
ylabel('Membrane Potential (V)')
hold off

%%
% semilogx(Kinside,V)
% semilogx(Koutside,V)
% xlabel ('K outside (mM)')
% ylabel('Membrane Potential (V)')
