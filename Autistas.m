% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Data Science
% Script para analisar os participantes que possuem Autismo

%Verificar quais participantes possuem autismo
j=1;z=1;num_Amostras=length(ClassASD); %Variaveis auxiliares
for i=1:num_Amostras %para todos os participantes
    if strncmp(ClassASD(i,:),'YES',3) %se ele tiver autismo
        Autista(j) = i; %Coloca o indice do mesmo em Autista
        j=j+1; %acrescenta j
    else %se ele não tiver autismo
        naoAutista(z) = i; %Coloca o indice do mesmo em naoAutista
        z=z+1; %acrescenta z
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
tabela3 = tabulate(contry_of_res);
%Neste ponto a proporção dos paises dos autistas

codelines = cell2mat(tabela3(:,2));
coders = char(tabela3(:,1));

figure
pareto(codelines, coders)%plota o grafico com quantidade dos paises
%Obs.: Devido o numero de paises presente pode ser enteressante visualizar
%estes dados em mais de um grafico
title('Autistas por Paises')
xlabel('Paises')
ylabel('Quantidade')

%Parentesco dos Autistas
%Seçao para verificar se o autista possui algum parente com autismo

tabela4 = tabulate(austim(Autista,:));
%Neste ponto quais autistas possuem parente autista

fprintf('A percentagem de Autistas que possuim parente autista é: %.2f\n',cell2mat(tabela4(2,3)));%exibe o percentual
fprintf('A percentagem de Autistas que não possuim parente autista é: %.2f\n',cell2mat(tabela4(1,3)));%exibe o percentual

codelines = [cell2mat(tabela4(2,3)) cell2mat(tabela4(1,3))];
coders = {'Parente-Autista','sem Parente-Autista'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Autista')

%Seçao para verificar se o nao-autista possui algum parente com autismo

tabela5 = tabulate(austim(naoAutista,:));
%Neste ponto quais noa-autistas possuem parente autista

fprintf('A percentagem de não-Autistas que possuim parente autista é: %.2f\n',cell2mat(tabela5(2,3)));%exibe o percentual
fprintf('A percentagem de não-Autistas que não possuim parente autista é: %.2f\n',cell2mat(tabela5(1,3)));%exibe o percentual

codelines = [cell2mat(tabela5(2,3)) cell2mat(tabela5(1,3))];
coders = {'Parente-Autista','sem Parente-Autista'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Não-Autista')


%Doença de pigmentação Icteria
%Seçao para verificar se o autista tem Icteria

tabela6 = tabulate(jundice(Autista,:));
%Neste ponto sabemos a proporção Autistas que possuem Icteria

fprintf('A percentagem de Autistas que possuim Icteria é: %.2f\n',cell2mat(tabela6(1,3)));%exibe o percentual
fprintf('A percentagem de Autistas que não possuim Icteria é: %.2f\n',cell2mat(tabela6(2,3)));%exibe o percentual

codelines = [cell2mat(tabela6(2,3)) cell2mat(tabela6(1,3))];
coders = {'sem Icteria','com Icteria'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Autistas')

%Seçao para verificar se o nao-autista tem Icteria

tabela7 = tabulate(jundice(naoAutista,:));
%Neste ponto sabemos a proporção nao-Autistas que possuem Icteria

fprintf('A percentagem de não-autistas que possuim Icteria é: %.2f\n',cell2mat(tabela7(2,3)));%exibe o percentual
fprintf('A percentagem de não-autistas que não possuim Icteria é: %.2f\n',cell2mat(tabela7(1,3)));%exibe o percentual

codelines = [cell2mat(tabela7(1,3)) cell2mat(tabela7(2,3))];
coders = {'sem Icteria','com Icteria'};

figure
pareto(codelines, coders) %plota o grafico com quantidade e percentagem
title('Não-Autistas')