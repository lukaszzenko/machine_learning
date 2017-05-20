function [theta] = normalEquation(X, y)
    %NORMALEQUATION Computes the closed-form solution to linear regression
    %   NORMALEQUATION(X,y) computes the closed-form solution to linear
    %   regression using the normal equations.

    theta = pinv(X' * X) * X' * y;

end
