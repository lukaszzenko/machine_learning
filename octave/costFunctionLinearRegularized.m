function [J, grad] = costFunctionLinearRegularized(theta, X, y, lambda)
    %COSTFUNCTIONLINEARREGULARIZED Compute cost and gradient for linear regression with regularization
    %   J = COSTFUNCTIONLINEARREGULARIZED(theta, X, y, lambda) computes the cost of using
    %   theta as the parameter for regularized linear regression and the
    %   gradient of the cost w.r.t. to the parameters.

    m = length(y); % number of training examples

    hx = X * theta;
    J = (sumsq(hx - y) + lambda * sumsq(replaceFirst(theta))) / (2 * m) ;
    grad = X' * (hx - y) / m + replaceFirst(theta) * lambda / m;

end
