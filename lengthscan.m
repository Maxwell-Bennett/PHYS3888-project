syms lam

W = [1.5:0.01:10];
index = [1:length(W)];
ptimeig = zeros(length(W),1);
phimeig = zeros(length(W),1);
ntimeig = zeros(length(W),1);
nhimeig = zeros(length(W),1);


for n = index
    w = W(n);

    possteep = findSailSols(1.1,0,-1.1,0,w);
    ptt(n,:) = possteep;
    pta = newposmat(possteep,w);
    ptc = newaccmat(possteep);
    pteigeq = det(lam^2*ptc+pta);
    pteig = vpasolve(pteigeq == 0, lam);
    pteig = double(pteig);
    ptimeig(n) = length(pteig(real(pteig) == 0));
    

    posshallow = findSailSols(1/w,0,-1/w,0,w);
    pha = newposmat(posshallow,w);
    phc = newaccmat(posshallow);
    pheigeq = det(lam^2*phc+pha);
    pheig = vpasolve(pheigeq == 0, lam);
    pheig = double(pheig);
    phimeig(n) = length(pheig(real(pheig) == 0));
    pth(n,:) = posshallow;

    negsteep = findSailSols(-1.1,0,1.1,0,w);
     nta = newposmat(negsteep,w);
    ntc = newaccmat(negsteep);
    nteigeq = det(lam^2*ntc+nta);
    nteig = vpasolve(nteigeq == 0, lam);
    nteig = double(nteig);
    ntimeig(n) = length(nteig(real(nteig) == 0));

    negshallow = findSailSols(-1/w,0,1/w,0,w);
     nha = newposmat(negshallow,w);
    nhc = newaccmat(negshallow);
    nheigeq = det(lam^2*nhc+nha);
    nheig = vpasolve(nheigeq == 0, lam);
    nheig = double(nheig);
    nhimeig(n) = length(nheig(real(nheig) == 0));
end