% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computa��o
% Data Science
% Script para analisar os participantes

load dataset.mat %carrega o dataset

%Sexo dos participantes
%Se�ao para analisar caracteristicas relacionando o genero

tabela1 = tabulate(gender);
%Neste ponto sabemos a propor��o do sexo dos Paarticipantes

fprintf('A percentagem de participantes do sexo feminino �: %.2f\n',cell2mat(tabela1(2,3)));%exibe o percentual
fprintf('A percentagem de participantes do sexo masculino �: %.2f\n',cell2mat(tabela1(1,3)));%exibe o percentual

codelines = cell2mat(tabela1(:,2));
coders = {'Masculino','Feminino'};
figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Participantes')

%Paises dos Participantes
%Se�ao para analisar caracteristicas relacionando o pais de residencia

%Cria tabela com paises na primeira colouna e numero de concorrencia na
%segunda
tabela2 = tabulate(contry_of_res);
%Neste ponto a propor��o dos paises dos participantes

codelines = cell2mat(tabela2(:,2));
coders = char(tabela2(:,1));

figure
pareto(codelines, coders)%plota o grafico com quantidade dos paises
%Obs.: Devido o numero de paises presente pode ser enteressante visualizar
%estes dados em mais de um grafico
title('Participantes')
xlabel('Paises')
ylabel('Quantidade')

%Parentesco dos Participantes
%Se�ao para verificar se o participante possui algum parente com autismo

tabela3 = tabulate(austim);
%Neste ponto quais participantes possuem parente autista

fprintf('A percentagem de participantes que possuim parente autista �: %.2f\n',cell2mat(tabela3(2,3)));%exibe o percentual
fprintf('A percentagem de participantes que n�o possuim parente autista �: %.2f\n',cell2mat(tabela3(1,3)));%exibe o percentual

codelines = [cell2mat(tabela3(2,2)) cell2mat(tabela3(1,2))];
coders = {'Parente-Autista','sem Parente-Autista'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Participantes')


