% Definindo G4(s) (já definido anteriormente)
% num = 4;
% den = conv([1 1], conv([1 2], [1 2 8]));
% G4 = tf(num, den);

% --- Método 1: Ziegler-Nichols (Curva de Reação) ---
Kp1 = 3.6;
Ti1 = 0.8;
Td1 = 0.2;
C1 = tf([Kp1*Td1 Kp1 Kp1/Ti1], [1 0]); % PID em forma paralela: Kp + Ki/s + Kd*s
                                     % C(s) = Kp + Kp/Ti * (1/s) + Kp*Td * s
                                     % Numerador: Kp*Td*s^2 + Kp*s + Kp/Ti
                                     % Denominador: s
                                     % Matlab tf([Kd Ki Kp], [1 0]) é para (Kd*s^2 + Kp*s + Ki)/s
                                     % Refazendo a forma padrão do PID: Kp*(1 + 1/(Ti*s) + Td*s)
                                     % C(s) = Kp + Kp/(Ti*s) + Kp*Td*s
                                     % C(s) = (Kp*Ti*s + Kp + Kp*Ti*Td*s^2) / (Ti*s)
                                     % Numerador: [Kp*Ti*Td  Kp*Ti  Kp]
                                     % Denominador: [Ti  0]

% Para a forma Kp*(1 + 1/(Ti*s) + Td*s), é mais fácil criar um PID no MATLAB:
C1_pid = pid(Kp1, Kp1/Ti1, Kp1*Td1); % PID(Kp, Ki, Kd)

% Sistema em malha fechada para o Método 1
sys_cl1 = feedback(C1_pid * G4, 1);

% --- Método 2: Ziegler-Nichols (Frequência Crítica) ---
Ku = 10.56;
Pu = 2.655;

Kp2 = 0.6 * Ku;
Ti2 = Pu / 2;
Td2 = Pu / 8;

C2_pid = pid(Kp2, Kp2/Ti2, Kp2*Td2);

% Sistema em malha fechada para o Método 2
sys_cl2 = feedback(C2_pid * G4, 1);

% --- Simulação e Comparação ---
figure;
step(sys_cl1, sys_cl2);
grid on;
title('Comparação da Resposta ao Degrau em Malha Fechada');
legend('Ziegler-Nichols (Curva de Reação)', 'Ziegler-Nichols (Frequência Crítica)');
xlabel('Tempo (s)');
ylabel('Amplitude');