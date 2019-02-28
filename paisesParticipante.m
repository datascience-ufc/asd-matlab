% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar a proporção dos paises

%Cria tabela com paises na primeira colouna e numero de concorrencia na
%segunda
tabela1 = tabulate(contry_of_res)

codelines = cell2mat(tabela1(:,2));
coders = char(tabela1(:,1));

figure
pareto(codelines, coders)%plota o grafico com quantidade dos paises
%Obs.: Devido o numero de paises presente pode ser enteressante visualizar
%estes dados em mais de um grafico
title('Distribuição por Paises')
xlabel('Paises')
ylabel('Quantidade')