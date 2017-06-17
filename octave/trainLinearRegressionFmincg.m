function [theta, J] = trainLinearRegressionFmincg(X, y, lambda)
%TRAINLINEARREGRESSIONFMINCG Trains linear regression given a dataset (X, y) and a
%regularization parameter lambda
%   [theta] = TRAINLINEARREGRESSIONFMINCG (X, y, lambda) trains linear regression using
%   the dataset (X, y) and regularization parameter lambda. Returns the
%   trained parameters theta.
%

% Set options for fmincg
options = optimset('MaxIter', 200, 'GradObj', 'on');
initial_theta = zeros(size(X, 2), 1); % initialize fitting parameters

% Run fminunc to obtain the optimal theta
[theta, J] = fmincg((@(th) costFunctionLinear(th, X, y, lambda)), initial_theta, options);

end
