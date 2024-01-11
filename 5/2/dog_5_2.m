function dog_5_2()

M = load('Local_reSize_GreyDog_5_2_A_DE_s.mat')

chol(M.spd_RCovDs)

chol(M.log_RCovDs)

chol(M.inv_RCovDs)

X = M.spd_RCovDs - M.log_RCovDs

chol(X) 


J = load('Local_reSize_GreyDog_5_2_J_IE_s.mat')

chol(J.spd_RCovDs)

chol(J.log_RCovDs)

chol(J.inv_RCovDs)

diffJnM = J.spd_RCovDs - M.spd_RCovDs

% chol(diffJnM) may fail as there is no guarantee that diffJnN is SPD.

L = load('Local_reSize_GreyDog_5_2_L_DE_s.mat')

chol(L.spd_RCovDs)

chol(L.log_RCovDs)

chol(L.inv_RCovDs)

diffMnL = M.spd_RCovDs - L.spd_RCovDs

% chol(diffMnL) will fail

L2 = load('Local_reSize_GreyDog_5_2_L_IE_s.mat')

chol(L2.spd_RCovDs)

% chol(L2.log_RCovDs) fail as not SPD

chol(L2.inv_RCovDs)

diffLnL2 = L.spd_RCovDs - L2.spd_RCovDs

% chol(diffLnL2) will fail