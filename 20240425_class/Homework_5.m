%% 5.1 (a)
x = 0 : 1 : 10;

y = exp(x);

figure(1)
plot(x,y)
title('y=exp(x)'),xlabel('x'), ylabel('y')
grid on

%% 5.1 (b)
y=sin(x);

figure(2)
plot(x,y)
title('y=sin(x)'), xlabel('x'), ylabel('y')
grid on

%% 5.1 (c)
a=5;
b=2;
c=4;
y=a*x.^2 + b*x + c;

figure(3)
plot(x,y)
title('y=a*x.^2 + b*x + c'), xlabel('x'), ylabel('y')
grid on

%% 5.1 (d)
y=sqrt(x);

figure(4)
plot(x,y)
title('y=sqrt(x)'), xlabel('x'),ylabel('y')
grid on

%% 5.2
y = [12, 14, 12, 22, 8, 9];

figure(1)
plot(y)
title('5.2 그래프'), xlabel('y행렬의 인덱스 번호'), ylabel('y')

%% 5.3
x = -pi : 0.001 : pi;
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);
y = [y1', y2', y3'];

figure(1)
plot(x,y)

%% 5.4 ( 5.3의 코드 수정 )
x = -pi : 0.001 : pi;
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);
y = [y1', y2', y3'];

figure(1)
plot(x,y1,'--r',x,y2,'-b',x,y3,':g')

%% 5.5 ( 5.4에서 그래프의 x범위 수정 )
x = -pi : 0.001 : pi;
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);
y = [y1', y2', y3'];

figure(1)
plot(x, y1, '--r', x, y2, '-b', x, y3, ':g')
legend('sin(x)', 'sin(2x)', 'sin(3x)')
axis([-6, 6, -1, 1]) % x 축 범위 설정
text(-4.5, 0.9, 'sin(x)', 'Color', 'red')
text(-4.5, 0.7, 'sin(2x)', 'Color', 'blue')
text(-4.5, 0.5, 'sin(3x)', 'Color', 'green')

%% 5.13
x = 0 : 1 : 10;

y = exp(x);
subplot(2, 2, 1)
plot(x, y)
title('y=exp(x)'), xlabel('x'), ylabel('y')
grid on

y = sin(x);
subplot(2, 2, 2)
plot(x, y)
title('y=sin(x)'), xlabel('x'), ylabel('y')
grid on

a = 5;
b = 2;
c = 4;
y = a*x.^2 + b*x + c;
subplot(2, 2, 3)
plot(x, y)
title('y=a*x.^2 + b*x + c'), xlabel('x'), ylabel('y')
grid on

y = sqrt(x)
subplot(2, 2, 4)
plot(x, y)
title('y=sqrt(x)'), xlabel('x'), ylabel('y')
grid on

%% 5.14
v0 = 100;
theta_p = pi / 4;
t = 0 : 0.01 : 20;
g = 9.8;
h = t.* v0.* cos(theta_p);
v = t.*v0.*sin(theta_p) - 1/2*g.*t.^2;
subplot(2, 2, 1)
plot(t, h)
title('5.6'), xlabel('time, sec'), ylabel('수평이동거리의 변화, m')

subplot(2,2,2)
plot(t,v)
title('5.6'), xlabel('time, sec'), ylabel('수직이동거리의 변화, m')

subplot(2, 2, 3)
plot(h,v)
title('5.7'), xlabel('수평, m'), ylabel('수직, m')

subplot(2, 2, 4)
h1 = t.*v0.*cos(pi/2);
v1 = t.*v0.*sin(pi/2) - 1/2*g.*t.^2;
h2 = t.*v0.*cos(pi/4);
v2 = t.*v0.*sin(pi/4) - 1/2*g.*t.^2;
h3 = t.*v0.*cos(pi/6);
v3 = t.*v0.*sin(pi/6) - 1/2*g.*t.^2;
plot(h1,v1,'-',h2,v2,'--',h3,v3,':')
legend('pi/2','pi/4','pi/6')
title('5.9')
xlabel('수평이동거리, m')
ylabel('수직이동거리, m')

%% 5.15

theta = 0 : 0.1 : 2*pi

%(a)
r = sin(theta).^2 + cos(theta).^2;
subplot (2, 2, 1)
polar(theta, r)
title('sin(theta) .^2 + cos(theta).^2')

%(b)
r = sin(theta);
subplot (2, 2, 2)
polar(theta, r)
title('sin(theta)')

%(C)
r = exp(theta / 5);
subplot (2, 2, 3)
polar(theta, r)
title('exp(theta / 5)')

%(d)
r = sinh(theta);
subplot (2, 2, 4)
polar(theta, r)
title('sinh(theta)')

%% 5.16
theta = 0 : 0.1 : 2*pi;

% (a), (b)
subplot(2, 2, 1)
r = 5 * cos(3 * theta);
polar(theta, r)

hold on
r = 2.5 * cos(6 * theta); % 크기를 절반으로 줄임
polar(theta, r)
title('꽃잎 (a), (b)문제')
hold off

%(c)
subplot(2, 2, 2)
r = 5 - 5*sin(theta);
polar(theta, r)
title('하트')

%(d)
theta_d = pi/2:4/5*pi:4.8*pi;

subplot(2, 2, 3)
r = ones(1, 6)
polar(theta_d, r)
title('별')

%(e)
angles = (0:6) * 2*pi/6;

subplot(2,2,4)
r = ones(size(angles));

polar(angles, r)
title('육각형')