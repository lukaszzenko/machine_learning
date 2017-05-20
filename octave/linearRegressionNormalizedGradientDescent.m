function [predict] = linearRegressionNormalizedGradientDescent(fileName)
    [X_orig, y] = readDataToMatrix(fileName);
    [X, mu, sigma] = featureNormalize(X_orig); % Normalize features

    theta = zeros(size(X, 2), 1); % initialize fitting parameters

    % Some gradient descent settings
    iterations = 1500;
    alpha = 0.1;

    [theta, J_history] = gradientDescent(theta, alpha, iterations, @(th) costFunctionLinear(th, X, y));

    plotCostHistory(J_history(2:end)); % Don't plot the first element of J_history, since it has probably overshooted

    predict = @(x) (([1 x] - mu) ./ sigma * theta);
end
