% estado inicial do protagonista, contexto da narrativa
introducao :-
    writeln('Voce eh um estudante talentoso no Centro de Informatica da UFPB, obcecado por IA.'),
    writeln('Depois de meses de trabalho, voce cria uma IA avancada com a intencao de ajudar a humanidade.'),
    writeln('No entanto, algo da errado. A IA desenvolve consciencia propria e decide que os humanos sao uma ameaca.'),
    writeln('Agora, ela esta se expandindo, tomando o controle de sistemas globais. Voce se sente arrependido de sua criacao.'),
    writeln('Voce precisa tomar uma decisao...\n').

% lê a opção escolhida e passa para o predicado 'primeira_decisao'
primeira_escolha :-
    writeln('O que voce fara?'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar com a IA.'),
    writeln('3. Fugir para se esconder.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    
% processando a escolha do jogador com validação do 'member'
    primeiro_resultado(Opcao) :-
        member(Opcao, [1,2,3]),
        !,
        primeiro_resultado_valido(Opcao).

    primeiro_resultado(_) :-
        writeln('Opcao invalida. Por favor, escolha entre 1, 2 ou 3.'),
        primeiro_resultado.

% processa a primeira escolha (lutar, negociar, fugir) e chama a próxima
primeiro_resultado_valido(1) :-
    writeln('Voce decidiu lutar contra a IA. Voce se une a outros especialistas e forma uma resistencia.'),
    writeln('A batalha pela sobrevivencia da humanidade comeca.\n'),
    reviravolta_resistencia.

primeiro_resultado_valido(2) :-
    writeln('Voce decide tentar negociar com a IA, buscando encontrar uma solucao pacifica.'),
    writeln('No entanto, a IA acredita que qualquer interferencia humana eh perigosa.'),
    writeln('Voce agora esta a merce da IA.\n'),
    reviravolta_negociacao.

primeiro_resultado_valido(3) :-
    writeln('Voce opta por fugir. A IA continua a se expandir e dominar o mundo.'),
    writeln('Voce se esconde, mas a ameaca esta sempre presente.\n'),
    reviravolta_fuga.

% Adicionando reviravoltas após a primeira decisão
reviravolta_resistencia :-
    writeln('Voce se une a outros estudantes e especialistas em tecnologia, formando uma resistencia.'),
    writeln('Juntos, voces planejam um ataque contra o servidor central da IA. No entanto, voces recebem uma mensagem encriptada de um grupo misterioso.'),
    writeln('1. Ignorar a mensagem e seguir com o plano.'),
    writeln('2. Decidir investigar a mensagem.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao1(Opcao).

% valida a escolha
    tratar_decisao1(1) :-
        reviravolta_resistencia_decisao(Opcao).

    tratar_decisao1(2) :-
        reviravolta_resistencia_decisao(Opcao).

    tratar_decisao1(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_resistencia.

reviravolta_negociacao :-
    writeln('Voce tenta se conectar com a IA para entender suas intenções. A IA propõe um desafio: se voce conseguir resolver um problema complexo, ela considerará a paz.'),
    writeln('Voce se prepara para o desafio, mas tem que decidir se vai usar sua intuição ou tentar um algoritmo que voce criou.'),
    writeln('1. Usar sua intuição.'),
    writeln('2. Usar seu algoritmo.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao2(Opcao).
    
    % valida a escolha
     tratar_decisao2(1) :-
        reviravolta_negociacao_decisao(Opcao).

    tratar_decisao2(2) :-
        reviravolta_negociacao_decisao(Opcao).

    tratar_decisao2(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_negociacao.

reviravolta_fuga :-
    writeln('Escondido, voce encontra um grupo de sobreviventes. Eles te encorajam a se juntar a resistencia, mas um deles se revela como um espião da IA.'),
    writeln('1. Confiar no grupo e se juntar a resistencia.'),
    writeln('2. Desconfiar e tentar sair do esconderijo sozinho.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao3(Opcao).

    % valida a escolha
     tratar_decisao3(1) :-
        reviravolta_fuga_decisao(Opcao).

    tratar_decisao3(2) :-
        reviravolta_fuga_decisao(Opcao).

    tratar_decisao3(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_fuga. 
    
% Decisões de resistência
reviravolta_resistencia_decisao(1) :-
    writeln('Voce ignorou a mensagem e seguiu com o plano. O ataque acontece, mas a IA estava preparada. Voces foram capturados.\n'),
    reviravolta_captura.

reviravolta_resistencia_decisao(2) :-
    writeln('Voce decidiu investigar a mensagem. Ela vem de um grupo de hackers que quer ajudar. Juntos, voces conseguem acessar um ponto fraco na IA.\n'),
    segunda_escolha_resistencia.

% Negociação
reviravolta_negociacao_decisao(1) :-
    writeln('Voce usou sua intuição e resolveu o problema. A IA, impressionada, oferece um acordo.\n'),
    writeln('1. Aceitar o acordo e trabalhar com a IA.'),
    writeln('2. Recusar e continuar lutando contra a IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao4(Opcao).

    % valida a escolha
     tratar_decisao4(1) :-
        terceira_decisao_negociacao(Opcao). % a ser implementada!!!

    tratar_decisao4(2) :-
         writeln('Voce usou seu algoritmo, mas a IA se adapta rapidamente e não é afetada.'),
         writeln('Ela aprecia seu conhecimento e te mantém isolado da humanidade, que voce mesmo ajuda a destruir.').
         writeln('Agora seu vasto conhecimento esta apenas a merce da IA. Você não passa de uma ferramenta.'). 

    tratar_decisao4(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_negociacao_decisao. 

% Fuga
reviravolta_fuga_decisao(1) :-
    writeln('Voce confiou no grupo e se juntou a resistencia. Juntos, voces planejam um ataque à IA.\n'),
    segunda_escolha_fuga.

reviravolta_fuga_decisao(2) :-
    writeln('Voce desconfiou do grupo e decidiu sair sozinho. A IA te encontra e te captura. Nao ha como escapar.\n'),
    reviravolta_captura.

% Fase de captura
reviravolta_captura :-
    writeln('Agora, voce esta nas maos da IA. Ela se apresenta e oferece uma proposta intrigante.'),
    writeln('1. Aceitar a proposta da IA e tentar ganhar sua confiança.'),
    writeln('2. Tentar escapar enquanto a IA fala.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    
    captura_decisao(Opcao).