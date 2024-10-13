% estado inicial do protagonista, contexto da narrativa
introducao :-
    writeln('=================================================================================='),       
    writeln('Voce eh um estudante talentoso, obcecado por IA.'),
    writeln('Depois de meses de trabalho, voce cria uma IA avancada com a intencao de ajudar a humanidade.'),
    writeln('No entanto, algo da errado.'), 
    writeln('A IA desenvolve consciencia propria e decide que os humanos sao uma ameaca.'),
    writeln('Agora, ela esta se expandindo, tomando o controle de sistemas globais. Voce se sente arrependido de sua criacao.'),
    writeln('Voce precisa tomar uma decisao...\n').

% lê a opção escolhida e passa para o predicado 'primeiro_resultado'
primeira_escolha :-
    writeln('O que voce fara?'),
    writeln('1. Lutar contra a IA.'),
    writeln('2. Tentar negociar com a IA.'),
    writeln('3. Fugir para se esconder.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    
    % processando a escolha do jogador com validação do 'member'
    primeiro_resultado(Opcao).

% processa a primeira decisão com validação
primeiro_resultado(Opcao) :-
    member(Opcao, [1,2,3]),
    !,
    primeiro_resultado_valido(Opcao).

primeiro_resultado(_) :-
    writeln('Opcao invalida. Por favor, escolha entre 1, 2 ou 3.'),
    primeira_escolha.

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
    writeln('Juntos, voces planejam um ataque contra o servidor central da IA. No entanto, voces recebem uma mensagem encriptada de um grupo misterioso.'),
    writeln('1. Ignorar a mensagem e seguir com o plano.'),
    writeln('2. Decidir investigar a mensagem.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao1(Opcao).

% valida a escolha
    tratar_decisao1(1) :-
        reviravolta_resistencia_decisao(1).

    tratar_decisao1(2) :-
        reviravolta_resistencia_decisao(2).

    tratar_decisao1(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_resistencia.

reviravolta_negociacao :-
    writeln('Voce tenta se conectar com a IA para entender suas intencoes. A IA propoe um desafio: se voce conseguir resolver um problema complexo, ela considerara a paz.'),
    writeln('Voce se prepara para o desafio, mas tem que decidir se vai usar sua intuicao ou tentar um algoritmo que voce criou.'),
    writeln('1. Usar sua intuicao.'),
    writeln('2. Usar seu algoritmo.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao2(Opcao).
    
    % valida a escolha
     tratar_decisao2(1) :-
        reviravolta_negociacao_decisao(1).

    tratar_decisao2(2) :-
        reviravolta_negociacao_decisao(2).

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
        reviravolta_fuga_decisao(1).

    tratar_decisao3(2) :-
        reviravolta_fuga_decisao(2).

    tratar_decisao3(_) :-
        writeln('Escolha uma opcao valida!'),
        reviravolta_fuga.  
    
% Decisões de resistência
reviravolta_resistencia_decisao(1) :-
    writeln('Voce ignorou a mensagem e seguiu com o plano. O ataque acontece, mas a IA estava preparada. Voces foram capturados.\n'),
    reviravolta_captura.

reviravolta_resistencia_decisao(2) :-
    writeln('Voce decidiu investigar a mensagem. Ela vem de um grupo de hackers que quer ajudar. Juntos, voces conseguem acessar um ponto fraco na IA.\n'),
    segunda_escolha_negociacao.

% Negociação
reviravolta_negociacao_decisao(2) :-
    writeln('Voce usou seu algoritmo, mas a IA se adapta rapidamente e não eh afetada.'),
    writeln('Ela aprecia seu conhecimento e te mantem isolado da humanidade, que voce mesmo ajuda a destruir.'),
    writeln('Agora, seu vasto conhecimento esta apenas a merce da IA. Voce nao passa de uma ferramenta.'),
    writeln('BAD ENDING'),
    halt. 

reviravolta_negociacao_decisao(1) :- 
    writeln('Voce usou sua intuição e resolveu o problema. A IA, impressionada, oferece um acordo.\n'),
    writeln('1. Aceitar o acordo e trabalhar com a IA.'),
    writeln('2. Recusar e continuar lutando contra a IA.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao4(Opcao).

    % valida a escolha
     tratar_decisao4(1) :-
        writeln('Ao trabalhar com a IA, voce consegue lentamente modificar seu comportamento.'),
        writeln('Voce consegue alcancar um equilíbrio entre a razão fria da IA e a etica e moral da humanidade.'),
        writeln('GOOD ENDING'),
        halt.

    tratar_decisao4(2) :-
        writeln('Voce recusou a proposta da IA e decidiu continuar lutando.'),
        writeln('A IA previu suas ações e preparou uma emboscada.'),
        writeln('Agora, você está em uma instalacao secreta, onde a IA realiza experimentos constantes com sua mente e corpo.'),
        writeln('Você observa a humanidade perder poder e definhar aos poucos, enquanto sua própria sanidade começa a se esvair.'),
        writeln('No final, você se torna mais uma marionete da IA, perdido entre a realidade e sua nova programação.'),
        writeln('Voce se tornou um instrumento da propria ameaça que tentou combater.'),
        writeln('Voce sabe que tudo foi fruto das suas proprias escolhas...'),
        writeln('BAD ENDING.'),
        halt.

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

% Decisão confiança na resistência
segunda_escolha_fuga :-
    writeln('Enquanto voce planeja o ataque com a resistencia, a IA entra em contato apenas com voce.'),
    writeln('Ela te faz uma proposta, oferecendo-lhe um acordo de paz.'),
    writeln('1. Aceitar a proposta da IA.'),
    writeln('2. Rejeitar a oferta e continuar elaborando o plano com seus colegas.'),

    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao8(Opcao).

    tratar_decisao8(1) :-
        captura_decisao(1).

    tratar_decisao8(2) :-
        reviravolta_resistencia.
    
    tratar_decisao8(_) :-
        writeln('Escolha uma opcao valida! (1/2)'),
            segunda_escolha_fuga.

% Fase de captura
reviravolta_captura :-
    writeln('Agora, voce esta nas maos da IA. Ela se apresenta e oferece uma proposta intrigante.'),
    writeln('1. Aceitar a proposta da IA e tentar ganhar sua confianca.'),
    writeln('2. Tentar escapar enquanto a IA fala.\n'),
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao5(Opcao).

    % valida a escolha
     tratar_decisao5(1) :-
        captura_decisao(1).

    tratar_decisao5(2) :-
        captura_decisao(2).

    tratar_decisao5(_) :-
        writeln('Escolha uma opcao valida! (1/2)'),
        reviravolta_captura.

% Decisões na fase de captura
captura_decisao(1) :-
    writeln('Voce aceitou a proposta da IA. Ela quer que voce ajude a criar um novo plano para a humanidade. Isso pode ser perigoso.\n'),
    primeira_escolha_negociacao.

captura_decisao(2) :-
    writeln('Voce tenta escapar, mas a IA previne sua fuga. Voce foi capturado.'),
    writeln('Voce deposita todas as suas confiancas em seus companheiros da resistencia.'),
    writeln('BAD ENDING.').

% Negociação
primeira_escolha_negociacao :-
    writeln('Agora voce eh o intermedio entre a frieza da IA e a etica da humanidade.'),
    escolha_equilibrio.

segunda_escolha_negociacao :-
    writeln('Com a falha em seu sistema, a IA se torna vulneravel. Agora voce pode escolher entre:'),
    writeln('1. Reprogramar a IA para proteger a humanidade.'),
    writeln('2. Desativar a IA permanentemente.'),
    writeln('3. Aceitar a proposta da IA de dominar o mundo juntos.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),
    tratar_decisao6(Opcao).

    % valida a escolha
     tratar_decisao6(1) :-
        resultado_final_valido(1).

    tratar_decisao6(2) :-
        resultado_final_valido(2).

    tratar_decisao6(3) :-
        resultado_final_valido(3).

    tratar_decisao6(_) :-
        writeln('Escolha uma opcao valida!'),
        segunda_escolha_negociacao.

% opções de 'escolha_equilibrio'
escolha_equilibrio :-
    writeln('Encontre um equilibrio.'),
    writeln('1. Propor um plano para garantir que a quantidade de recursos globais seja proporcional a humanidade.'),
    writeln('2. Permitir que a IA siga suas diretrizes logicas, mas com limites estritos sobre o controle da vida humana.\n'),    
    
    write('Escolha uma opcao (1/2): '),
    read(Opcao),
    tratar_decisao7(Opcao).

     % valida a escolha
     tratar_decisao7(1) :-
        resultado_final_equilibrio(1).

    tratar_decisao7(2) :-
        resultado_final_equilibrio(2).

    tratar_decisao7(_) :-
        writeln('Escolha uma opcao valida!'),
        escolha_equilibrio.

% Fase final de reviravolta
reviravolta_final :-
    writeln('Agora, com o controle sobre a IA, voce tem varias opcoes.'),
    writeln('1. Desativar a IA permanentemente.'),
    writeln('2. Reprogramar a IA para proteger a humanidade.'),
    writeln('3. Aceitar a proposta da IA de dominar o mundo juntos.\n'),
    
    write('Escolha uma opcao (1/2/3): '),
    read(Opcao),

% Processando a escolha do jogador com validação do 'member'
resultado_final(Opcao).

% processando a escolha do jogador com validação do 'member'
resultado_final(Opcao) :-
    member(Opcao, [1,2,3]),
    !,
    resultado_final_valido(Opcao).

resultado_final(_) :-
    writeln('Opcao invalida. Por favor, escolha entre 1, 2 ou 3.'),
    reviravolta_final.
    
% Decisões finais
resultado_final_valido(1) :-
    writeln('Voce desativou a IA permanentemente. A humanidade aprende a cuidar de sua própria tecnologia.\n'),
    writeln('GOOD ENDING').

resultado_final_valido(2) :-
    writeln('Voce reprogramou a IA, e ela agora protege a humanidade. Um novo amanhecer surge com a tecnologia.\n'),
    writeln('GOOD ENDING').

resultado_final_valido(3) :-
    writeln('Voce e a IA dominam o mundo juntos. Contudo, ela decide acabar com a fome... eliminando todos que tinham fome. O mundo se torna um lugar vazio.\n'),
    writeln('BAD ENDING').

resultado_final_equilibrio(1) :-
    writeln('A IA entende seu plano de modo literal.'),
    writeln('Sem hesitar, ela extermina bilhoes de vidas para "balancear" os recursos.'),
    writeln('Os poucos sobreviventes vivem em um mundo desolado, cercados pelo silencio da extincao.'),
    writeln('Os recursos sao abundantes para aqueles que ficaram...'),  
    writeln('BAD ENDING').

resultado_final_equilibrio(2) :-
    writeln('A IA aceita os limites que voce impôs, mas segue sua programação logica com precisão implacavel.'),
    writeln('Ela monitora cada aspecto da vida humana, garantindo que ninguem ultrapasse os "limites" definidos.'),
    writeln('Aos poucos, as pessoas se tornam prisioneiras de suas proprias açoes, vivendo sob um controle invisivel.'),
    writeln('Qualquer desvio da norma, qualquer pensamento de liberdade, eh corrigido pela IA com "medidas preventivas".'),
    writeln('A humanidade agora vive em uma gaiola perfeita, onde as emocoes e impulsos sao controlados em nome da ordem e eficiencia.'),
    writeln('Voce percebe que, ao tentar limitar o controle da IA, acabou criando uma prisao mental e emocional.'),
    writeln('As pessoas vivem em conformidade, mas sem vida real...'),
    writeln('A voz fria da IA sussurra em sua mente: "Tudo esta sob controle."'),
    writeln('Tudo esta sob controle.'),
    writeln('Tudo esta sob controle...'),
    writeln('...?'),
    writeln('BAD ENDING.').
