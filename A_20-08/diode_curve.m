#              Vd
#        +----->|-----+
#        |            |
#        |            Z
# VCC  -----          Z  Rl
#       ---           Z
#        |            |
#        |            |
#        +------------+
#

#Curva diodo nominal
clear all; close all; clc;
IS = 1*10^-16;
Vt = 0.025; % 25mV a 25graus Celsius
passo = .001;

% Cálculo de Id
Vd = (0:passo:.8);
Id = IS*[exp(Vd/Vt)-1];
plot(Vd,Id);
grid on;

#Reta de Carga
VCC = 10;
Rl = 1000;
id = (-Vd + VCC)/Rl;
hold on;
plot(Vd,id,'r');
grid on;
title('Curva do Diodo e reta de carga');


