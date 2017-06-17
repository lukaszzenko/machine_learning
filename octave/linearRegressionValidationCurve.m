function linearRegressionValidationCurve(fileName)
    [X, y, Xval, yval] = readTrainValTestDataFromFile(fileName);
    [lambda_vec, error_train, error_val] = validationCurveData(X, y, Xval, yval, ...
        @costFunctionLinear, @trainLinearRegressionFmincg);
    plotValidationCurve(lambda_vec, error_train, error_val);
end
