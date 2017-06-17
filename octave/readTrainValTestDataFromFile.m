function [X, y, Xval, yval, Xtest, ytest] = readTrainValTestDataFromFile(fileName)
    load(fileName);
    X = [ones(size(X, 1), 1), X]; % Add a column of ones to X
    Xval = [ones(size(Xval, 1), 1), Xval]; % Add a column of ones to Xval
    Xtest = [ones(size(Xtest, 1), 1), Xtest]; % Add a column of ones to Xtest
end
