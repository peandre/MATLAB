clc
clf
clear all

% Magnetic Fields
Bx = 0.875;
By = 0.875;
Bz = 0.875;
B = sqrt(Bx^2 + By^2 + Bz^2);

% Particle Properties
q = 1.692*10^-19;
m = 9.11*10^-31;
T = (2*pi*m)/(q/B);

% Time Conditions
resolution = 100000;
cycles = 0.5;
time_step = T/resolution;
full_trajectory = cycles*T;

% Initial Velocities 
vxo = 6000;
vyo = 0;
vzo = 100;

% Initial Positions
rxo = 0;
ryo = 0;
rzo = 0;

% Position Vectors (Initialized)
x_vector = [];
y_vector = [];
z_vector = [];

for time = 0:time_step:full_trajectory
    
    % Accelerations
%     ax = (q/m)*(By*vzo - Bz*vyo);
%     ay = (q/m)*(Bz*vxo - Bx*vzo);
%     az = (q/m)*(Bx*vyo - By*vxo);
    
    ax = (q/m)*(vyo*Bz - By*vzo);
    ay = (q/m)*(Bx*vzo - Bz*vxo);
    az = (q/m)*(vxo*By - vyo*Bx);
    
    % Velocities
    vx = vxo + ax*time;
    vy = vyo + ay*time;
    vz = vzo + az*time;
    
    % Positions
    rx = rxo + vxo*time + 0.5*ax*(time^2);
    ry = ryo + vyo*time + 0.5*ay*(time^2);
    rz = rzo + vzo*time + 0.5*az*(time^2)
    
    % Position Vectors
    x_vector = [x_vector rx];
    y_vector = [y_vector ry];
    z_vector = [z_vector rz];
    
    % Updating of Velocity Variables
    vxo = vx;
    vyo = vy;
    vzo = vz;
    
    % Updating of Position Vectors
    rxo = rx;
    ryo = ry;
    rzo = rz;
    
end

plot3(x_vector,y_vector,z_vector)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
    
    