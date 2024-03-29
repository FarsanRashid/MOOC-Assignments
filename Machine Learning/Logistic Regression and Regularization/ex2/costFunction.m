function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

for index = 1:m
   y_i = y(index)
   x_i = X(index,:)
   h_theta_i = sigmoid(x_i * theta)
   J = J +  ( -y_i * log(h_theta_i) - (1-y_i) * log(1-h_theta_i ) )
end

J = J/m

grad = zeros(size(theta));

for j = 1:size(theta)
    sum = 0
    for i = 1:m
    x_i = X(i,:)
    predicted = 1/ (1 + exp (- (x_i*theta)))
    y_i = y(i)
    sum = sum + (predicted - y_i)* X(i,j)
    end
    grad(j) = sum/m
end
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta

% =============================================================

end
