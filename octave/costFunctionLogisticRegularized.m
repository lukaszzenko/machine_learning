function [J, grad] = costFunctionLogisticRegularized(theta, X, y, lambda)
    %COSTFUNCTIONLOGISTICREGULARIZED Compute cost and gradient for logistic regression with regularization
    %   J = COSTFUNCTIONLOGISTICREGULARIZED(theta, X, y, lambda) computes the cost of using
    %   theta as the parameter for regularized logistic regression and the
    %   gradient of the cost w.r.t. to the parameters.

    m = length(y); % number of training examples

    h = sigmoid(X * theta);
    J = (-y' * log(h) - (1 - y)' * log (1 - h)) / m + sumsq(replaceFirst(theta)) * lambda / (2 * m) ;
    grad = X' * (h - y) / m + replaceFirst(theta) * lambda / m;

end
