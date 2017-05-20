function [theta] = normalEquationRegularized(X, y, lambda)
    %NORMALEQUATIONREGULARIZED Computes the closed-form solution to regularized linear regression
    %   NORMALEQUATIONREGULARIZED(X,y) computes the closed-form solution to regularized linear
    %   regression using the normal equations.
    n = size(X, 2);
    L = replaceFirst(eye(n));
    theta = pinv(X' * X + lambda * L) * X' * y;

end
