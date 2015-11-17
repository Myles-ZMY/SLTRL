function y = jk_tanh(x, dzdy)
%ʵ��tanh���������Χ��(-1 1)֮��
%ǰ��y = tanh(x)
%����y = dzdy * (1-tanh^2(x)),�����yӦ�ö�Ӧdzdx
%dzdx = dzdy*dydx, dydx = 1-tanh^2(x)
%ע�⣬�����x, dzdyӦ�ö�����ά��
if nargin <= 1
    y = tanh(x);
else 
    output = tanh(x);
    dydx = 1 - output.*output;
    y = dzdy .* dydx;
end