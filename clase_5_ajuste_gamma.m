clear all
close all
clc

%lectura de imagen
img = imread("rx_2.jpg");

%Visualizar imagen
%figure(1)
%imshow(img)

%% ajuste gamma

img = double(img); % conversión a double
gamma = 1.3; %valor de gamma para el ajuste

%funcion de ajuste gamma
img_gamma = 255*((img./255).^(1/gamma));

%% Reconversión de formato

img = uint8(img); %Conversion a entero de 8 bits
img_gamma = uint8(img_gamma); %Conversion a entero de 8 bits 

figure (1)
imshow([img; img_gamma])

%% Negativo de la imagen (opcional para RX)
%img_neg = 255 - img_gamma;
%figure(2)
%imshow(img_neg)






