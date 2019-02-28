% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar os participantes que possuem Autismo

%Verificar quais participantes possuem autismo
j=1;num_Amostras=length(ClassASD); %Variaveis auxiliares
for i=1:num_Amostras %para todos os participantes
    if strncmp(ClassASD(i,:),'YES',3) %se ele tiver autismo
        Autista(j) = i; %Coloca o indice no mesmo em Autista
        j=j+1; %acrescenta j
    end
end
%Aki temos o vetor Autista com os indices dos Autistas

%Sexo dos Autistas
%Seçao para analisar caracteristicas relacionando o genero

f=0;m=0; %contador feminino e masculino
tam=length(Autista); %numero de autistas

for i=1:tam %para todos os autistas
    if isequal(gender(Autista(i)),'m' ) %se o Autista for masculino
        m = m+1; %incrementa m
    else
        if isequal(gender(Autista(i)),'f' ) %se o Autista for feminino
            f=f+1; %incrementa m
        end
    end
end
%Neste ponto sabemos a proporção do sexo dos Autistas

fprintf('A percentagem de Autistas do sexo feminino é: %.2f\n',f*100/tam);%exibe o percentual
fprintf('A percentagem de Autistas do sexo masculino é: %.2f\n',m*100/tam);%exibe o percentual

codelines = [m f];
coders = {'Masculino','Feminino'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem de sexo dos Autistas
title('Participante Autistas')

%Paises dos Autistas
%Seçao para analisar caracteristicas relacionando o pais de residencia

%Cria tabela com paises na primeira colouna e numero de concorrencia na
%segunda
tabela2 = tabulate(contry_of_res)

codelines = cell2mat(tabela2(:,2));
coders = char(tabela2(:,1));

figure
pareto(codelines, coders)%plota o grafico com quantidade dos paises
%Obs.: Devido o numero de paises presente pode ser enteressante visualizar
%estes dados em mais de um grafico
title('Autistas por Paises')
xlabel('Paises')
ylabel('Quantidade')