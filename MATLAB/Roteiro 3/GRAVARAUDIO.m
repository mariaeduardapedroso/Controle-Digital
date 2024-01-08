%% Código para Gravar áudio e salvar
% Processamento Digital de Sinais - UTFPR/PR
% prof. Daniel Campos 29/5/2022

%%

% Ao apertar RUN o áudio começará a ser gravado

clear
clc
close all

Tempo = 5; %5 segundos de gravação

FS = 8000; %Frequência de amostragem em 8 kHz
Nbits = 16; %sinal de 16 bits
Canais = 1; %1 = mono, 2 = stereo
r = audiorecorder(FS, Nbits, Canais); %preparar para gravar
record(r);
pause(Tempo);
stop(r);
Y = getaudiodata(r, 'double'); %guardar em uma variável double

%tocar áudio
p = audioplayer(Y,FS);
play(p)

N = length(Y);
t = 0:1/FS:(N-1)/FS;

figure
plot(t,Y,'k')
xlabel('Tempo (s)')
ylabel('Amplitude do áudio')

save('audio_gravado.mat','Y', 'FS')