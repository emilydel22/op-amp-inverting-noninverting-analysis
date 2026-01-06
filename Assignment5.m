%% BME 4503C – Assignment 5
% Inverting & Non-Inverting Operational Amplifiers
% This script loads amplifier data and plots the required graphs.
% Make sure the file 'dual_amp_capture.csv' is in the same MATLAB folder.

clear; clc; close all;

%% Step 1 – Load CSV data
fname = 'dual_amp_capture.csv';
T = readtable(fname);

% Extract columns
t = T.t_ms;       % time (ms)
Vinv = T.Vinv;    % inverting amplifier output
Vnon = T.Vnoninv; % non-inverting amplifier output
Rpot = T.Rpot;    % potentiometer resistance

%% Step 2 – Plot Inverting Amplifier
figure('Name','Inverting Amplifier');
plot(Rpot, Vinv, '.', 'MarkerSize', 8);
xlabel('Potentiometer Resistance (Ω)','FontSize',12);
ylabel('Output Voltage V_{out} (V)','FontSize',12);
title('Inverting Amplifier: V_{out} vs R_{pot}','FontSize',13);
grid on;
saveas(gcf, 'inverting_amp_plot.png');

%% Step 3 – Plot Non-Inverting Amplifier
figure('Name','Non-Inverting Amplifier');
plot(Rpot, Vnon, '.', 'MarkerSize', 8);
xlabel('Potentiometer Resistance (Ω)','FontSize',12);
ylabel('Output Voltage V_{out} (V)','FontSize',12);
title('Non-Inverting Amplifier: V_{out} vs R_{pot}','FontSize',13);
grid on;
saveas(gcf, 'noninverting_amp_plot.png');

%% Step 4 – Combined Comparison Plot
figure('Name','Inverting vs Non-Inverting Comparison');
plot(Rpot, Vinv, '.', 'MarkerSize', 8); hold on;
plot(Rpot, Vnon, '.', 'MarkerSize', 8);
xlabel('Potentiometer Resistance (Ω)','FontSize',12);
ylabel('Output Voltage V_{out} (V)','FontSize',12);
title('Comparison: Inverting vs Non-Inverting Amplifier','FontSize',13);
legend('Inverting','Non-Inverting','Location','best');
grid on;
saveas(gcf, 'comparison_plot.png');

%% Step 5 – Display confirmation
disp('✅ Graphs generated and saved as:');
disp('   inverting_amp_plot.png');
disp('   noninverting_amp_plot.png');
disp('   comparison_plot.png');
