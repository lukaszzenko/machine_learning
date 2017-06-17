function [predict] = linearRegressionLearningCurve(fileName)
    [X, y, Xval, yval] = readTrainValTestDataFromFile(fileName);

    % Set options for fminunc
    lambda = 0;

    [error_train, error_val] = learningCurveData(X, y, Xval, yval, lambda, ...
        @costFunctionLinear, @trainLinearRegressionFminunc);
    plotLearningCurve(error_train, error_val);
end
