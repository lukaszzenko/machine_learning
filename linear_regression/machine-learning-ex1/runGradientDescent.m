function runGradientDescent(fileName)
    data = load(fileName);

    X_ = [ones(size(data, 1), 1), data(:, 1:end - 1)]; % Add a column of ones to x
    X =  featureNormalize(X_); % Normalize features
    y = data(:, end:end);

    theta = zeros(size(X, 2), 1); % initialize fitting parameters

    % Some gradient descent settings
    iterations = 1500;
    alpha = 0.01;

    [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);

    if size(X, 2) == 2
      % Plot Data
      plotData(X(:, 2), y);
      range = xlim()(1) : 0.1 : xlim()(2);
      hold on;
      plot(range, [ones(length(range), 1), range'] * theta);
      theta_2 = normalEqn(X, y);
      disp(theta);
      disp(theta_2);
      plot(range, [ones(length(range), 1), range'] * theta_2);
    end

    figure;
    plot(J_history);
end
