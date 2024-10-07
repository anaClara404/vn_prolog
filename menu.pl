% menu do jogo

main_menu :- 
    writeln('========================================'),
    writeln('Bem-vindo(a) ao Centro de Informatica!'),
    writeln('========================================'),
    writeln('1. Iniciar o Jogo.'),
    writeln('2. Sair.'),
    read(Escolha),  % Armazena a escolha na variável Escolha
    tratar_escolha(Escolha).  % Chama a função para tratar a escolha

tratar_escolha(1) :- 
    criar_personagem(_).  % Chama a função para criar o personagem
    
tratar_escolha(2) :- 
    writeln('========================================'),
    writeln('Encerrando o jogo...'),
    writeln('========================================'),
    halt.  % Para encerrar o programa

tratar_escolha(_) :- 
    writeln('Entrada invalida! Por favor, escolha 1 ou 2.'),
    main_menu.  % Retorna ao menu principal se a entrada for inválida




