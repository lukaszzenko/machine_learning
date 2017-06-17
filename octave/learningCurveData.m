function [error_train, error_val] = ...
    learningCurveData(X, y, Xval, yval, lambda, costFunction, trainFunction, interval=1)
%LEARNINGCURVEDATA Generates the train and cross validation set errors needed
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular,
%       it returns two vectors of the same length - error_train and
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).

m = size(X, 1); % Number of training examples

for i = 1:interval:m
    theta = trainFunction(X(1:i, :), y(1:i), lambda);

    error_train(i) = costFunction(theta, X(1:i, :), y(1:i));
    error_val(i) = costFunction(theta, Xval, yval);
end

end
