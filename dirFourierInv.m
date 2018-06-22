function [ f ] = dirFourierInv( S, theta, t )
% dirFourierInv 

% Parameters:

% S: Two-dimensional array that stores the sinogram. Measurement angles
%    theta_j are on the horizontal axis, and the signed distance t between 
%    the x-ray and the origin varies along thevertical axis.

% theta: and Nx1 column vector that stores the angles along which the
%        measurements are performed.

% t: an Mx1 colum vectorthat stores the evenly spaced signed distances of
%    the lines that measurements are perfomred. t = [-tmax:dt:tmax]

% Output: 

% f: two-dimensional array that stores the reconstructed attenuation
% coefficients over [-tmax:dt:tmax]x[-tmax:dt:tmax]

%% Algorithm:

N = length(theta);
f = zeros(size(S));


end

