%% exercicio 1
w = 2*pi; 
T = 2*pi/w; 

t = 0 : 0.00001 : (T*1);
x = sin(w*t); % Sinal Contínuo

% Períodos de Amostragem
ts1 = 0.1;
ts2 = 0.2;
ts3 = 0.3;
ts4 = 0.4;
ts5 = 0.5;


n = 0 : ceil(N*T/ts1)-1;  
xs1 = sin(w*n*ts1)
xs2 = sin(w*n*ts2)
xs3 = sin(w*n*ts3)
xs4 = sin(w*n*ts4)
xs5 = sin(w*n*ts5)


% Plotando os gráficos
figure
plot(t,x,'k') % Plota o sinal contínuo
title("a)100ms")
xlabel('Tempo/Amostras')
ylabel('Amp')
hold on
stem(n*ts1,xs1,'b','MarkerFaceColor', 'b') % Plota o sinal amostrado
plot(t,sin((1/T+1/ts1)*2*pi*t),'--','color', [0.5 0.5 0.5]) %alias
hold off
legend(["Xc(t) Contínuo" "Xs[N] Discreto" "Xa(t) Alias Contínuo"],'Location','northeast')

figure
plot(t,x,'k') % Plota o sinal contínuo
title("b)200ms")
xlabel('Tempo/Amostras')
ylabel('Amp')
xlim([0 1])
hold on
stem(n*ts2,xs2,'b','MarkerFaceColor', 'b') % Plota o sinal amostrado
plot(t,sin((1/T+1/ts2)*2*pi*t),'--','color', [0.5 0.5 0.5]) %alias
hold off
legend(["Xc(t) Contínuo" "Xs[N] Discreto" "Xa(t) Alias Contínuo"],'Location','northeast')

figure
plot(t,x,'k') % Plota o sinal contínuo
title("c)300ms")
xlabel('Tempo/Amostras')
ylabel('Amp')
xlim([0 1])
hold on
stem(n*ts3,xs3,'b','MarkerFaceColor', 'b') % Plota o sinal amostrado
plot(t,sin((1/T+1/ts3)*2*pi*t),'--','color', [0.5 0.5 0.5]) %alias
hold off
legend(["Xc(t) Contínuo" "Xs[N] Discreto" "Xa(t) Alias Contínuo"],'Location','northeast')

figure
plot(t,x,'k') % Plota o sinal contínuo
title("d)400ms")
xlabel('Tempo/Amostras')
ylabel('Amp')
xlim([0 1])
hold on
stem(n*ts4,xs4,'b','MarkerFaceColor', 'b') % Plota o sinal amostrado
plot(t,sin((1/T+1/ts4)*2*pi*t),'--','color', [0.5 0.5 0.5]) %alias
hold off
legend(["Xc(t) Contínuo" "Xs[N] Discreto" "Xa(t) Alias Contínuo"],'Location','northeast')

figure
plot(t,x,'k') % Plota o sinal contínuo
title("e)500ms")
xlabel('Tempo/Amostras')
ylabel('Amp')
xlim([0 1])
hold on
stem(n*ts5,xs5,'b','MarkerFaceColor', 'b') % Plota o sinal amostrado
plot(t,sin((1/T+1/ts5)*2*pi*t),'--','color', [0.5 0.5 0.5]) %alias
hold off
legend(["Xc(t) Contínuo" "Xs[N] Discreto" "Xa(t) Alias Contínuo"],'Location','northeast')


%% exercicio 2
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
    xlabel('Tempo/Amostras')
    ylabel('Amp')
    title(['Fs = ' num2str(fs(i)) ' Hz']);
    legend('x(t) Continuo','x[n] discreto');
end