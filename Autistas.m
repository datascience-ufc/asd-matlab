% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar os participantes que possuem Autismo

j=1;num_Amostras=length(ClassASD); %Variaveis auxiliares
for i=1:num_Amostras
    if strncmp(ClassASD(i,:),'YES',3)
        Autista(j) = i;
        j=j+1;
    end
end

f=0;m=0;tam=length(Autista);
for i=1:tam
    if isequal(gender(i),'m' )
        m = m+1;
    else
        if isequal(gender(i),'f' )
            f=f+1;
        end
    end
end

fprintf('A percentagem de Autistas do sexo feminino é: %.2f\n',f*100/tam);%exibe o percentual de acertos
fprintf('A percentagem de Autistas do sexo masculino é: %.2f\n',m*100/tam);%exibe o percentual de acertos

codelines = [m f];
coders = {'Masculino','Feminino'};

figure
pareto(codelines, coders)
title('Publico Participante')