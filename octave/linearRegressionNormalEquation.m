function [predict] = linearRegressionNormalEquation(fileName)
    [X, y] = readXyFromFile(fileName);

    theta = normalEquation(X, y); % initialize fitting parameters

    predict = @(x) ([1 x] * theta);
end
