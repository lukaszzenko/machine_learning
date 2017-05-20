function [predict] = linearRegressionFminunc(fileName)
    [X, y] = readDataToMatrix(fileName);

    % Set options for fminunc
    options = optimset('GradObj', 'on', 'MaxIter', 400);
    theta = zeros(size(X, 2), 1); % initialize fitting parameters

    % Run fminunc to obtain the optimal theta
    [theta, cost] = fminunc((@(th) costFunctionLinear(th, X, y)), theta, options);

    predict = @(x) ([1 x] * theta);
end
