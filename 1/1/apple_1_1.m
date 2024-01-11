function apple_1_1()

M = load('Local_reSize_Apple_A_DE_s.mat')

chol(M.spd_RCovDs)

chol(M.log_RCovDs)

chol(M.inv_RCovDs)

X = M.spd_RCovDs - M.log_RCovDs

chol(X)

N = load('Local_reSize_Apple_A_IE_s.mat')

chol(N.spd_RCovDs)

chol(N.log_RCovDs)

chol(N.inv_RCovDs)

diffMnN = M.spd_RCovDs - N.spd_RCovDs

% chol(diffMnN) will fail as diffMnN is not necessarily be positive
% definite.


J = load('Local_reSize_Apple_J_IE_s.mat')

chol(J.spd_RCovDs)

chol(J.log_RCovDs)

chol(J.inv_RCovDs)

diffJnN = J.spd_RCovDs - N.spd_RCovDs

% chol(diffJnN) may fail as there is no guarantee that diffJnN is SPD.

L = load('Local_reSize_Apple_L_DE_s.mat')

chol(L.spd_RCovDs)

chol(L.log_RCovDs)

chol(L.inv_RCovDs)

diffMnL = M.spd_RCovDs - L.spd_RCovDs

% chol(diffMnL) will fail


