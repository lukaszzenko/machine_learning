function plotValidationCurve(lambda_vec, error_train, error_val)
  plot(lambda_vec, error_train, lambda_vec, error_val);
  legend('Train', 'Cross Validation');
  xlabel('lambda');
  ylabel('Error');
end
