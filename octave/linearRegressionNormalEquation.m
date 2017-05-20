function [predict] = linearRegressionNormalEquation(fileName)
    [X, y] = readDataToMatrix(fileName);

    theta = normalEquation(X, y); % initialize fitting parameters

    predict = @(x) ([1 x] * theta);
end
