x_vals = 0:2
y_vals = 0:3
k = 1/60

joint_pmf = outer(x_vals, y_vals, function(x, y) k * (x + 2*y + 1))
joint_pmf
sum(joint_pmf)

g_x = rowSums(joint_pmf)
g_x
h_y = colSums(joint_pmf)
h_y

E_x = sum(x_vals * g_x)
E_x
E_y = sum(y_vals * h_y)
E_y

E_x2 = sum(x_vals^2 * g_x)
E_x2
E_y2 = sum(y_vals^2 * h_y)
E_y2

var_x = E_x2 - (E_x^2)
var_x
var_y = E_y2 - (E_y^2)
var_y

E_xy = sum(outer(x_vals, y_vals, function(x, y) x * y * k * (x + 2*y + 1)))
E_xy

cov = E_xy - (E_x * E_y)
cov

r_xy = cov/sqrt(var_x*var_y)
r_xy

cond_prob <- sum(joint[1:2, 3]/h_y[3])
cond_prob