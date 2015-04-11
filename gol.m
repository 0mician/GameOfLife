% N(i,j,t) is a function that counts neighbors in of a cell
% x(i,j,t+1) = 0 if N(i,j,t) <= 1
%              1 if x(i,j,t) = 1 && 2 <= N(i,j,t) <= 3
%              1 if x(i,j,t) = 0 && N(i,j,t) = 3
%              0 if N(i,j,t) >= 4