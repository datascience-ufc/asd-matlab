% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar a proporção dos sexos

f=0;m=0;num_Amostras=length(gender);
for i=1:num_Amostras
    if isequal(gender(i),'m' )
        m = m+1;
    else
        if isequal(gender(i),'f' )
            f=f+1;
        end
    end
end

fprintf('A percentagem de sexo feminino é: %.2f\n',f*100/num_Amostras);%exibe o percentual de acertos
fprintf('A percentagem de sexo masculino é: %.2f\n',m*100/num_Amostras);%exibe o percentual de acertos

codelines = [m f];
coders = {'Masculino','Feminino'}

figure
pareto(codelines, coders)
title('Publico Participante')