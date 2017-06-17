function [J, gradient] = costFunctionLinear(theta, X, y, lambda=0)
    %COSTFUNCTIONLINEAR Compute cost for linear regression
    %   [J, gradient] = COSTFUNCTIONLINEAR(theta, X, y) computes the cost of using theta as the
    %   parameter for linear regression to fit the data points in X and y and the gradient.

    m = length(y); % number of training examples

    hx = X * theta;
    J = (sumsq(hx - y) + lambda * sumsq(replaceFirst(theta))) / (2 * m) ;
    gradient = X' * (hx - y) / m + replaceFirst(theta) * lambda / m;

end
