function [theta, J_history] = gradientDescent(theta, alpha, num_iters, costFunction)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
    %   taking num_iters gradient steps with learning rate alpha

    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        [J_history(iter), gradient] = costFunction(theta);
        theta = theta - alpha * gradient;
    end
end
