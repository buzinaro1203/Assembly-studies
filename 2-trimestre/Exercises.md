Curso: Engenharia de Software
Componente Curricular: Arquitetura de Computadores
Professor: Eduardo Henrique Molina da Cruz


Atividade - não avaliativa

Exercícios sobre programação assembly

Usar o simulador de MIPS MARS nos exercícios.

________________________________________________________


Ex. 1. Elabore um código assembly que calcule o resultado da seguinte somatória, onde n deverá ser especificado em um registrador. Imprimir o resultado usando chamadas de sistema. Alterar depois o código para que n e r estejam na memória.

r=i=0ni

Ex. 2. Dado um vetor na memória com n elementos, elabore um código assembly que calcule o resultado da seguinte somatória, onde n deverá ser especificado na memória, e r salvo na memória. Imprimir o resultado usando chamadas de sistema.

r=i=0n-1vetor[i]

Ex. 3. Dados dois vetores vetor1 e vetor2 na memória, cada um com n elementos, elabore um código assembly que some os elementos de tais vetores em um outro vetor vetor3. O valor de n deverá ser especificado na memória. Imprimir o resultado usando chamadas de sistema. Deverá ler os dados a serem impressos direto de vetor3.

vetor3[i]=vetor1[i]+vetor2[i], sendo 0i<n 


Ex. 4. Elabore um código assembly para MIPS que calcule a média dos elementos de um vetor, e que determine quantos elementos o vetor tem abaixo e acima da média.

Ex. 5. Fazer um código assembly que escreva na memória primária um vetor contendo a sequência dos quadrados perfeitos de 1 até n, sendo n uma variável na memória. O valor do quadrado perfeito deverá ser calculado pelo código em execução.
Deverá também escrever uma saída no terminal contendo:
1 - 1
2 - 4
3 - 9
…
n - n2

Ex. 6. Dado um vetor na memória com n elementos, elabore um código assembly que identifique o maior valor do vetor, onde n deverá ser especificado na memória. Imprimir o resultado usando chamadas de sistema.

r=max( vetor[i] ), sendo 0i<n 


Ex. 7. Deverá escrever um código assembly que implemente o algoritmo selection sort. Imprimir o vetor ordenado.

