W = [0.05:0.05:10];
index = [1:length(W)];
ptimeig = zeros(length(W),1);
phimeig = zeros(length(W),1);
ntimeig = zeros(length(W),1);
nhimeig = zeros(length(W),1);
syms lam

for n = index
    
    w = W(n);
     
    if w < 1.5
        g = 1.4;
    else
        g = 1.2;
    end
   

    possteep = parasailsols(g,0,-g,0,w);
    pta = paraposmat(possteep,w);
    ptc = newaccmat(possteep);
    pteigeq = det(lam^2*ptc+pta);
    pteig = vpasolve(pteigeq == 0, lam);
    pteig = double(pteig);
    ptimeig(n) = length(pteig(real(pteig) == 0));
     ptreeig(n) = length(pteig(real(pteig) ~= 0));

   

    negsteep = parasailsols(-g,0,g,0,w);
     nta = paraposmat(negsteep,w);
    ntc = newaccmat(negsteep);
    nteigeq = det(lam^2*ntc+nta);
    nteig = vpasolve(nteigeq == 0, lam);
    nteig = double(nteig);
    ntimeig(n) = length(nteig(real(nteig) == 0));
    ntreeig(n) = length(pteig(real(nteig) ~= 0));
    
    
end