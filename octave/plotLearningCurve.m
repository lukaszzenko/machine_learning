function plotLearningCurve(error_train, error_val)
  m = length(error_train);
  plot(1:m, error_train, 1:m, error_val);
  title('Learning curve')
  legend('Train', 'Cross Validation')
  xlabel('Number of training examples')
  ylabel('Error')
end
