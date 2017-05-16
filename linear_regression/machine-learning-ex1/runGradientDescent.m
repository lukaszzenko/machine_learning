function runGradientDescent(fileName)
    data = load(fileName);

    X_ = [ones(size(data, 1), 1), data(:, 1:end - 1)]; % Add a column of ones to x
    X =  featureNormalize(X_); % Normalize features
    y = data(:, end:end);

    theta = zeros(size(X, 2), 1); % initialize fitting parameters

    % Some gradient descent settings
    iterations = 1500;
    alpha = 0.1;

    [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);

    figure;
    plot(J_history);
end
