function [lambda_vec, error_train, error_val] = ...
    validationCurveData(X, y, Xval, yval, costFunction, trainFunction)
%VALIDATIONCURVEDATA Generate the train and validation errors needed to
%plot a validation curve that we can use to select lambda
%   [lambda_vec, error_train, error_val] = ...
%       VALIDATIONCURVEDATA(X, y, Xval, yval) returns the train
%       and validation errors (in error_train, error_val)
%       for different values of lambda. You are given the training set (X,
%       y) and validation set (Xval, yval).
%

% Selected values of lambda
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

for i = 1:length(lambda_vec)
  lambda = lambda_vec(i);
  theta = trainFunction(X, y, lambda);
  error_train(i) = costFunction(theta, X, y);
  error_val(i) = costFunction(theta, Xval, yval);
end

end
