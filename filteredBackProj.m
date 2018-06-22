function [ f ] = filteredBackProj(S,theta,t,filter, B)
% filteredBackProj 

% Parameters:

% S: Two-dimensional array that stores the sinogram. Measurement angles
%    theta_j are on the horizontal axis, and the signed distance t between 
%    the x-ray and the origin varies along thevertical axis.

% theta: and Nx1 column vector that stores the angles along which the
%        measurements are performed.

% filter: one of the strings Ram-Lak, Hanning and Shepp-Logan that
%         indicates which filter is used.

% B: is a scalar that represents the cut-off bandwidth for the filters.

% Output: 

% f: two-dimensional array that stores the reconstructed attenuation
% coefficients over [-tmax:dt:tmax]x[-tmax:dt:tmax]
% -----------------------------------------------------------------------

%% Algorithm:

N = length(t);
f = zeros(size(S));


end

