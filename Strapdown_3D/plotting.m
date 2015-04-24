figure()
plot(inertialData_ts.angular_rate);
axis([0 100 -1 1]);
title('Simulated Inertial Data');
legend('Angular Rate X', 'Angular Rate Y', 'Angular Rate Z');
xlabel('Time [sec]');
ylabel('Angular Rate (rad/s)');
%%
figure()
plot(simout.NavData.attitude.roll);
hold on;
plot(simout.NavData.attitude.pitch, 'r');
plot(simout.NavData.attitude.yaw,'g');
