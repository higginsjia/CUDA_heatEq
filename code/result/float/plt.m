clear; close all
format long;
d = load('dev_out.dat');
h = load('host_out.dat');
exc =  load('exact.dat');


figure(1)
mesh((d))
title('��� : float (device)')
axis tight
figure(2)
mesh((h))
title('��� : float (host)')
axis tight
figure(3)
mesh(abs(d-exc))
title('���� : float (host)')
axis tight
figure(4)
mesh(abs(h-exc))
title('���� : float (device)')
axis tight
figure(5);    mesh(abs(d-h))
% fprintf('gpu : %.16f\n', u1(89,60));
% fprintf('cpu : %.16f\n', u2(89,60));