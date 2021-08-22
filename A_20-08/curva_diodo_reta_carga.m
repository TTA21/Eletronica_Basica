% Curva do diodo
% Ref : Livro Richard Jaeger
% Pags 
% Id = IS*[e^(Vd/Vt)-1]
% Walter 1.0
clear all; close all; clc;
IS = 1*10^-16; 
Vt = 0.025; % 25mV a 25graus Celsius 
passo = .001;

% Cálculo de Id
Vd = (0:passo:.8);
Id = IS*[exp(Vd/Vt)-1];
plot(Vd,Id);
grid on;

% Cálculo da reta de carga 
Vcc = 10;
rs = 2000;
id = (-Vd + Vcc)/rs;
hold on;
plot(Vd,id,'r');
grid on;
title('Curva do Diodo e reta de carga');
