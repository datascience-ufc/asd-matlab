% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar a proporção dos sexos participantes

%Variaveis auxiliares
f=0; %participantes femininos
m=0; %participantes masculinos
num_Amostras=length(gender); %numero de participantes 

for i=1:num_Amostras %para todos os participantes
    if isequal(gender(i),'m' ) %se for masculino
        m = m+1; %acrescenta contador masculino
    else
        if isequal(gender(i),'f' ) %se for feminino
            f=f+1; %acrescenta contador feminino
        end
    end
end
%Neste ponto sabemos a proporção do sexo dos participantes

fprintf('A percentagem de sexo feminino é: %.2f\n',f*100/num_Amostras);%exibe o percentual
fprintf('A percentagem de sexo masculino é: %.2f\n',m*100/num_Amostras);%exibe o percentual

codelines = [m f];
coders = {'Masculino','Feminino'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem de sexo dos participantes
title('Publico Participante')