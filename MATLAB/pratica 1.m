% Definir o vetor de tempo t de 150ms
t = 0:0.0001:0.15;

% Definir a função x(t)
x = 127*3*sin(2*pi*60*t);

% Amostrar a função x(t) com diferentes frequências de amostragem
fs = [20 200 50 500 100 1000]; % Frequências de amostragem
for i = 1:length(fs)
    ts = 1/fs(i); % Período de amostragem
    n = 0:ts:0.15; % Vetor de tempo de amostragem
    xn = 127*3*sin(2*pi*60*n); % Função amostrada
    % Plotar as funções x(t) e xn
    subplot(length(fs),1,i);
    plot(t,x,'r',n,xn,'bo');
    title(['Fs = ' num2str(fs(i)) ' Hz']);
    legend('x(t)','xn');
end