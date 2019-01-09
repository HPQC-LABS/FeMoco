clear('all')
RDMEstimates204d8m=load('RDMEstimates.toBeUniformed');
RDMEstimates204d8m_stepsize1=RDMEstimates204d8m(1:87348,:);

summed=10*movmean(RDMEstimates204d8m_stepsize1(:,2:end),[0 9],1);
RDMEstimates204d8m_stepsize1_averaged=[RDMEstimates204d8m_stepsize1(1:10:end,1) summed(1:10:end,:)];

RDMEstimates204d8m_stepsize10=RDMEstimates204d8m(87348+1:end,:);

RDMEstimates204d8m_uniform=[RDMEstimates204d8m_stepsize1_averaged ;RDMEstimates204d8m_stepsize10];
save('RDMEstimates.uniform','RDMEstimates204d8m_uniform','-ASCII');

%% Proof that the above works:

A=[
10    1      7
11    3      6 
12    5      4
13    0      9
14    9      5
15    7      0
16    8      3
17    4      2
18    6      1
19    2      8
20    7      5
21    4      4
22    1      3
23    3      2
24    9      9
25    0      1
26    2      6
27    8      0
28    6      8
29    5      7];

summed=10*movmean(A(:,2:end),[0,9],1);
Rsummed=[A(1:10:end,1) summed(1:10:end,:)];

%summed =
% 10    45    45
% 20    45    45