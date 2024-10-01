function V = GHK(p,Ko,Ki,No,Ni)
% This function generates the potential according to the GHK model
% R=8.314;%Constant
% T=310;%Constant
% F=96485;%Constant
% pk:
% pn:
% p=pn/pk;
% Ko: [K] outside
% No: [N] outside
% Ki: [K] inside
% Ni: [N] inside
% David Murrugarra, Feb 2, 2024

R=8.314;
T=310;
F=96485;
numerator=Ko+p*No;
denominator=Ki+p*Ni;

V=(R*T/F)*log(numerator/denominator);

end
