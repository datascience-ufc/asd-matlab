% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar parentes Autistas dos participantes

%Cria tabela com o numero de sim e nao
tabela2 = tabulate(austim)

codelines = cell2mat(tabela2(:,2));
coders = char(tabela2(:,1));

figure
pareto(codelines, coders)%plota o grafico
title('Parente com autismo')