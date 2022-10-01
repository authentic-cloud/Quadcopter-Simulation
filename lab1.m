fs =100;
Ts=1/fs;
t0=5;
t1=2.5;
t2=2.5;

t=0:Ts:10-Ts;


p0 = [ 0;  0; -3; 0];
p1 = [ 2; -2; -3; 0];
p2 = [ 5;  2; -4; 0];
p3 = [7;-3;-5;-pi/2];
p4 = [0;-3;-2;-pi];


x_traj=[(ones(1,t1*fs)*p1(1)) linspace((p1(1)),(p2(1)),(t2)*fs) linspace((p2(1)),(p3(1)),(t3)*fs)];
y_traj=[(ones(1,t1*fs)*p1(2)) linspace((p1(2)),(p2(2)),(t2)*fs) linspace((p2(2)),(p3(2)),(t3)*fs)];
z_traj=[(ones(1,t1*fs)*p1(3)) linspace((p1(3)),(p2(3)),(t2)*fs) linspace((p2(3)),(p3(3)),(t3)*fs)];
yaw_traj=[(ones(1,t1*fs)*p1(4)) linspace((p1(4)),(p2(4)),(t2)*fs) linspace((p2(4)),(p3(4)),(t3)*fs)];


xTrajectory = timeseries(xtraj,t);
yTrajectory = timeseries(ytraj,t);
zTrajectory = timeseries(ztraj,t);
yawTrajectory = timeseries(yaw,t);

plot(xTrajectory);

