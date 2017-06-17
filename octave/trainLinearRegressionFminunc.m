function [theta, J] = trainLinearRegressionFminunc(X, y, lambda)
%TRAINLINEARREGRESSIONFMINUNC Trains linear regression given a dataset (X, y) and a
%regularization parameter lambda
%   [theta] = TRAINLINEARREG (X, y, lambda) trains linear regression using
%   the dataset (X, y) and regularization parameter lambda. Returns the
%   trained parameters theta.
%

% Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);
initial_theta = zeros(size(X, 2), 1); % initialize fitting parameters

% Run fminunc to obtain the optimal theta
[theta, J] = fminunc((@(th) costFunctionLinear(th, X, y, lambda)), initial_theta, options);

end
