%{
  ------------------------- ����weil�� ------------------------------------
  1����������B1C�źŵ�Ƶ�������������
  --- ����Ҫ������Ƶ�������������
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function   Code = genMaincode_pilot(PRN)

N        = 10243;           % weil�볤��

% ��Ƶ����������λ��
w        = [796,  156,  4198, 3941, 1374, 1338, 1833, 2521, 3175, 168,  ...
            2715, 4408, 3160, 2796, 459,  3594, 4813, 586,  1428, 2371, ...
            2285, 3377, 4965, 3779, 4547, 1646, 1430, 607,  2118, 4709, ...
            1149, 3283, 2473, 1006, 3670, 1817, 771,  2173, 740,  1433, ...
            2458, 3459, 2155, 1205, 413,  874,  2463, 1106, 1590, 3873, ...
            4026, 4272, 3556, 128,  1200, 130,  4494, 1871, 3073, 4386, ...
            4098, 1923, 1176];
        
% ��Ƶ���������ȡ��
p        = [7575, 2369, 5688, 539,  2270, 7306, 6457, 6254, 5644, 7119, ...
            1402, 5557, 5764, 1073, 7001, 5910, 10060,2710, 1546, 6887, ...
            1883, 5613, 5062, 1038, 10170,6484, 1718, 2535, 1158, 526,  ...
            7331, 5844, 6423, 6968, 1280, 1838, 1989, 6468, 2091, 1581, ...
            1453, 6252, 7122, 7711, 7216, 2113, 1095, 1628, 1713, 6102, ...
            6123, 6070, 1115, 8047, 6795, 2575, 53,   1729, 6388, 682,  ...
            5565, 7160, 2277];
        
% ��ʼ����B1C��Ƶ����������
L        = zeros(1, N);

% ���㳤��ΪN�����õ�����
for k = 1:N
   
   t      = mod((k-1)^2, N); 
   L(t+1) = 1; 
    
end

% �������õ���������B1C���ݷ�������
Ckwp    = zeros(1,N);
for k = 1:N
   
    Ckwp(k) = xor(L(mod(k-1+p(PRN)-1,N)+1), L(mod(k-1+p(PRN)-1+w(PRN),N)+1));
    
end

% �ض�
Code   = Ckwp(1:10230);

return