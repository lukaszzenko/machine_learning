function [predict] = logisticRegressionNormalizedGradientDescent(fileName)
    [X_orig, y] = readXyFromFile(fileName);

    if (size(X_orig, 2) == 3)
        plotBinaryClassified2Dim(X_orig(:, 2:end), y);
    end

    [X, mu, sigma] = featureNormalize(X_orig); % Normalize features

    theta = zeros(size(X, 2), 1); % initialize fitting parameters

    % Some gradient descent settings
    iterations = 1500;
    alpha = 0.1;

    [theta, J_history] = gradientDescent(theta, alpha, iterations, @(th) costFunctionLogistic(th, X, y));

    predict = @(x) (sigmoid(([1 x] - mu) ./ sigma * theta) >= 0.5);
end
