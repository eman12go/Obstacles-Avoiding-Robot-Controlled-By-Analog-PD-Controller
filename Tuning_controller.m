num= [0.8];
den=[0.08 1];
step(num,den)
Gp = tf(num,den)

kp =120;
ki =0;
kd =0.03;
Gc = pid(kp,ki,kd);
Gf = series(Gp,Gc);
Gt = feedback(Gf,1);
figure,step(Gt)

