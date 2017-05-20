function [J, gradient] = costFunctionLogistic(theta, X, y)
    %COSTFUNCTIONLOGISTIC Compute cost and gradient for logistic regression
    %   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
    %   parameter for logistic regression and the gradient of the cost
    %   w.r.t. to the parameters.

    m = length(y); % number of training examples
    h = sigmoid(X * theta);
    J = (-y' * log(h) - (1 - y)' * log (1 - h)) / m;
    gradient = X' * (h - y) / m;

end
