%% INITIALIZATION
format compact;
warning off;
close all;
clear all;
clc;

%% PARAMETERS

% Machining Times
T_mach = 200e-6;  % Machining time period
f_mach = 1 / T_mach; % Machining Frequency
duty = 10; % Machining duty cycle in percentage
t2 = duty * T_mach / 100;  % Delay t2
t1 = t2 * 30 / 100; % Ignition delay (assumed to be 30% of the total spark duration)
duty_inv = 100 - duty;   % Duty for control signal of ignition switch
duty_load = (t2-t1)/T_mach*100;  % Duty for turning ON load
delay_load = t1;
delayVC = 0; % Delay between start of voltage and current sources

% References
I_ref = 10; % Current Source Reference
V_ref = 80; % Voltage Source Reference

Vd_val = 110; % DC Link Voltage
r_val = 1; % Load Resistance Value
f_sw = 50e3; % Switching Frequency
fSampling = f_sw; % Sampling Frequency
frq_dc = 10; % ?????

rl1_val = 0.0002; % Resistance of Inductor L1
rl2_val = 0.0001; % Resistance of Inductor L2
rc2_val = 0.0001; % Resistance of Capacitor C2

i1_ripple = 0.01; % Maximum allowed ripple in L1 current
v2_ripple = 0.01; % Maximum allowed ripple in Voltage Source Output

pm_des_vs = 60; % Desired phase margin
a2_vs = 1e-8; % ??????
wm2 = 1; % ??????

%% PASSIVE COMPONENT SIZING

% Current Source inductor
Vo1 = I_ref * r_val;
delta_i1 = i1_ripple * I_ref;
l1_val = Vo1*(Vd_val-Vo1)/(delta_i1*f_sw*Vd_val);

% Voltage Source inductor
I_L2 = I_ref * 0.01;  % Assume 10% of load current is provided by VSource
% Ideally zero current should be provided by voltage source
%l2_val = (V_ref / Vd_val)* (Vd_val-V_ref) / (2 * I_L2) / f_sw ;
l2_val = 2e-3;

% Voltage Source capacitor
% c2_val = (1-V_ref/Vd_val)/(8*v2_ripple*l2_val*f_sw^2);
c2_val = 0.1e-3;  % A BIGGER CAPACITOR IS USED FOR SAFE OPERATION

%% SNUBBER DESIGN OF Qd

Rs = V_ref / I_ref;
Ton = (T_mach - t2) / 100;
L = l1_val + l2_val; % Max worst case inductance across Qd
Cs_min = L * I_ref^2 / V_ref^2;
Cs_max = Ton / (10 * Rs);
Cs = (Cs_min + Cs_max) / 2;
% Rs = 1e4;

%% END