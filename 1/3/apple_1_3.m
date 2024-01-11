function apple_1_3()

M = load('Local_reSize_GreenApple_1_3_A_DE_s.mat')

chol(M.spd_RCovDs)

chol(M.log_RCovDs)

chol(M.inv_RCovDs)

X = M.spd_RCovDs - M.log_RCovDs

chol(X) 


J = load('Local_reSize_GreenApple_1_3_J_IE_s.mat')

chol(J.spd_RCovDs)

chol(J.log_RCovDs)

chol(J.inv_RCovDs)

diffJnM = J.spd_RCovDs - M.spd_RCovDs

% chol(diffJnM) may fail as there is no guarantee that diffJnN is SPD.

L = load('Local_reSize_GreenApple_1_3_L_DE_s.mat')

chol(L.spd_RCovDs)

chol(L.log_RCovDs)

chol(L.inv_RCovDs)

diffMnL = M.spd_RCovDs - L.spd_RCovDs

% chol(diffMnL) will fail