% Finding the root of non linear equation using Bisection method

f = input('Enter an equation with @(x): ');
a = input('Enter the assumed lower limit: ');
b = input('Enter the assumed upper limit: ');
error = input('Specify the allowable error: ');

for i = 1:100
    c = (a+b)/2;
    if f(a)*f(c)<0;
        b = c;
    else
        a = c;
    end
    if abs(f(a))< error
        break
    end
end

fprintf('The root: %f \n The number of bisections: %d \n', c, i);
