addpath('design')

shape = [10,12];
alpha = 1.0;
beta = 0.8;
theta = .5*ones(shape);
%%%%%%%%%%
% genLam %
%%%%%%%%%%
[lam_plus, lam_minus] = genLam(theta,shape,alpha,beta);
% lam_plus = 1*.5 + .8*(.5) = .9
assert(isequal(lam_plus,.9*ones(shape)),'incorrect lam_plus')
% lam_minux = (.5/1+.5/.8)^-1 = .888-
assert(isequal(lam_minus,(.5/1+.5/.8)^-1 * ones(shape)),'incorrect lam_minus')