function [dJ_qFlexion,dJ_qKnee] = dJ_Inverse_Kinematics_p(LA,LL,dLA,dLL)
%DJ_INVERSE_KINEMATICS_P
%    [DJ_QFLEXION,DJ_QKNEE] = DJ_INVERSE_KINEMATICS_P(LA,LL,DLA,DLL)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    03-Sep-2018 15:12:52

t2 = LL.^2;
t3 = t2+3.005264000000002e-2;
t4 = 1.0./LL.^2;
t5 = 1.0./LL.^3;
t6 = t3.^2;
t7 = 1.0./LL;
t8 = t4.*t6.*(-8.926893172654969e-1)+1.0;
dJ_qFlexion = [0.0,dLL.*(1.0./sqrt(t8).*(t7.*1.889644746787604-t3.*t5.*1.889644746787604)+1.0./t8.^(3.0./2.0).*(t3.*t4.*9.44822373393802e-1-1.889644746787604).*(t3.*t7.*3.570757269061988-t5.*t6.*1.785378634530994).*(1.0./2.0))];
if nargout > 1
    t10 = t2.*1.889644746787604;
    t9 = t10-1.001611186696901;
    t11 = t9.^2;
    t12 = -t11+1.0;
    dJ_qKnee = [0.0,dLL.*(1.0./sqrt(t12).*3.779289493575208+t2.*t9.*1.0./t12.^(3.0./2.0).*1.428302907624795e1)];
end