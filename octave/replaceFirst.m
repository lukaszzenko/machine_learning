function [X] = replaceFirst(X, value=0)
    %REPLACEFIRST Replace first element of matrix/vector with given value.
    X(1) = value;
end
