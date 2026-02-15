

clear all
close all
clc

% This script opens the serial communication. It is used to manually interact with the cell, or to work with Simulink models.

% NOTE: To close the serial communication, it is necessary to delete
% the "btGL" element from the workspace.


pause(1)
global btGL;
btGL = serialport("COM18",115200)   % opens the communication


pause(3)

writeread(btGL,"%M")   % Enable interface mode (see User Manual)

pause(1)

% Sensor reading for testing
digitalTemp = readTemp(1)
analogTemp = readTemp(2)

display("Connection ready")






