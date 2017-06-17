function findBestAlphaForGradientDescent(fileName)
    graphics_toolkit('gnuplot');

    alphas = [10, 3, 1, 0.3, 0.1, 0.03, 0.01, 0.003, 0.001]; % Potential alpha values to check

    [X_orig, y] = readXyFromFile(fileName);
    [X, mu, sigma] = featureNormalize(X_orig); % Normalize features

    % Some gradient descent settings
    iterations = 200;

    for alpha = alphas
        fprintf('Running gradient descent for alpha = %f\n', alpha);
        theta = zeros(size(X, 2), 1); % initialize fitting parameters

        [theta, J_history] = gradientDescent(theta, alpha, iterations, @(th) costFunctionLinear(th, X, y));

        plotCostHistory(J_history(2:end));
        fprintf('Click anything to continue...\n')
        pause;
    end
end
