% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computa��o
% Data Science
% Script para analisar a propor��o dos paises

tbl = tabulate(contry_of_res)

codelines = cell2mat(tbl(:,2));
coders = char(tbl(:,1));

figure
pareto(codelines, coders)
title('Distribui��o por Paises')
xlabel('Paises')
ylabel('Quantidade')