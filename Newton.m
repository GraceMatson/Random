clear all
rng(0, 'twister');
y1 = [0 0.865 0.982 0.998 1];
x1 = rand(5,3);
a = [10 0.6 0.8];
a = a';
y1= y1';

@fitting_func;
@diffMat;

y1 = fitting_func([1 0.2 0.3]', x1)+ rand(5,1);

for i = 0:20
d = y1 - fitting_func(a, x1);
z = diffMat(a,x1);
prod = z'*z; 
del_a = double(inv(prod)*(z'*d));
a = a + del_a;
end
a
yf= double(fitting_func(a,x1))

% figure
% plot(x1,y1);
% hold on
% fplot(@(t) ((1-exp(t*at(2)))*at(1)),[0 10]);
% hold off