function [J, gradient] = costFunctionLinear(theta, X, y)
    %COSTFUNCTIONLINEAR Compute cost for linear regression
    %   [J, gradient] = COSTFUNCTIONLINEAR(theta, X, y) computes the cost of using theta as the
    %   parameter for linear regression to fit the data points in X and y and the gradient.

    m = length(y); % number of training examples
    hx = X * theta;
    J = sum((hx - y) .^ 2) / (2 * m);
    gradient = X' * (hx - y) / m;

end
