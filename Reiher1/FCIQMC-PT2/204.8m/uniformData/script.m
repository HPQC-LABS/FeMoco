clear('all')
RDMEstimates204d8m=load('RDMEstimates.toBeUniformed');
RDMEstimates204d8m_stepsize1=RDMEstimates204d8m(1:87348,:);
averaged=movmean(RDMEstimates204d8m_stepsize1(:,2:end),[0 9],2);
RDMEstimates204d8m_stepsize1_averaged=[RDMEstimates204d8m_stepsize1(1:10:end,1) averaged(1:10:end,:)];

RDMEstimates204d8m_stepsize10=RDMEstimates204d8m(87348+1:end,:);

RDMEstimates204d8m_uniform=[RDMEstimates204d8m_stepsize1 ;RDMEstimates204d8m_stepsize10];
save('RDMEstimates.uniform','RDMEstimates204d8m_uniform','-ASCII');
