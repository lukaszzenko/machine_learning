function [X, y] = readXyFromFile(fileName)
    data = load(fileName);
    X = [ones(size(data, 1), 1), data(:, 1:end - 1)]; % Add a column of ones to x
    y = data(:, end:end);
end
