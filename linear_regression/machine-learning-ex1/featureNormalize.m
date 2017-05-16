function [X_norm, mu, sigma] = featureNormalize(X)
    %FEATURENORMALIZE Normalizes the features in X
    %   FEATURENORMALIZE(X) returns a normalized version of X where
    %   the mean value of each feature is 0 and the standard deviation
    %   is 1. This is often a good preprocessing step to do when
    %   working with learning algorithms.

    % Compute the mean for each feature and subtract it from the dataset
    mu = mean(X);
    mu(1) = 0;  % Leave ones in the first column untouched
    X_norm = X - mu;

    % Compute the standard deviation of each feature and divide each feature by it's standard deviation
    sigma = std(X_norm);
    sigma(sigma == 0) = 1; % Replace 0s to 1s to avoid diving by 0

    X_norm = X_norm ./ sigma;

end
