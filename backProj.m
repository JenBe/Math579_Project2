function [ A ] = backProj(S, theta, t)
%backProj Summary of this function goes here

N = length(t);
A = zeros(N,N);

w = [cos(theta) sin(theta)];

for row = 1:N
    for col = 1:N
        sum = 0;
        for j = 1:length(theta)
            tj = t(col)*w(j,1) + t(row)*w(j,2);
            index = find(tj < t,1);
            if(index == 1)
                sum = sum + S(index,j);
            elseif((isempty(index) == 1))
                sum = sum + S(end,j);
            else
                alpha = (tj - t(index - 1))/(t(index) - t(index - 1));
                sum = sum + alpha*S(index,j) + (1-alpha)*S(index-1,j);
            end
        end
        A(row,col) = sum/N;
    end
end

end

