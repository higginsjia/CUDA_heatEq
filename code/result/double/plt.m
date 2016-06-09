clear; close all
format long;
d = load('dev_out.dat');
h = load('host_out.dat');
exc =  load('exact.dat');


figure(1)
mesh((d))
title('��� : double (device)')
axis tight
figure(2)
mesh((h))
title('��� : double (host)')
axis tight
figure(3)
mesh(abs(d-exc))
title('���� : double (host)')
axis tight
figure(4)
mesh(abs(h-exc))
title('���� : double (device)')
axis tight
figure(5);    mesh(abs(d-h))
% fprintf('gpu : %.16f\n', u1(89,60));
% fprintf('cpu : %.16f\n', u2(89,60));