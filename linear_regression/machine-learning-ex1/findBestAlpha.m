function findBestAlpha(fileName)
    graphics_toolkit('gnuplot');

    data = load(fileName);

    alphas = [10, 3, 1, 0.3, 0.1, 0.03, 0.01, 0.003, 0.001]; % Potential alpha values to check

    X_ = [ones(size(data, 1), 1), data(:, 1:end - 1)]; % Add a column of ones to x
    X =  featureNormalize(X_); % Normalize features
    y = data(:, end:end);

    % Some gradient descent settings
    iterations = 200;

    for alpha = alphas
        fprintf('Running gradient descent for alpha = %f\n', alpha);
        theta = zeros(size(X, 2), 1); % initialize fitting parameters

        [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);

        figure;
        plot(J_history);
        fprintf('Click anything to continue...\n')
        pause;
    end
end
