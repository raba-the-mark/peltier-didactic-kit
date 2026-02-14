clear all
close all
clc

% questo script apre la comunicazione seriale. Serve per interagire
% manualmente con la cella, oppure per lavorare con schemi Simulink

% NB per chiudere la cominicazione seriale è necessario eleminare
% l'elemento "btGL" dal workspace


pause(1)
global btGL;
btGL = serialport("COM18",115200)   % apro la comunicazione seriale


pause(3)

writeread(btGL,"%M")   % Abilito la modalità interfaccia

pause(1)

% lettura sensori per prova
digitalTemp = readTemp(1)
analogTemp = readTemp(2)

display("Connection ready")





