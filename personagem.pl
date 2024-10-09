% cria o personagem

criar_personagem(Protagonista) :-
    writeln('Vamos criar seu personagem!'),
    writeln('------------------------------>'),

    write('Digite seu nome:'),
    read(Nome),
    
    format('Voce eh ~w, um estudante do Centro de Informatica da UFPB.\n', [Nome]),

    % atribui os valores do protagonista à variável
    Protagonista = protagonista(nome(Nome), estado_inicial).