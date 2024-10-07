% cria o personagem

:- use_module(library(readutil)). % Para usar read_line_to_string/2

criar_personagem(Protagonista) :-
    writeln('Vamos criar seu personagem!'),
    writeln('------------------------------>'),

    writeln('Digite seu nome:'),
    read_line_to_string(user_input, Nome),  % Lê o nome como string
    
    format('Voce eh ~w, um estudante do Centro de Informatica da UFPB.\n', [Nome]),

    % atribui os valores do protagonista à variável
    Protagonista = protagonista(nome(Nome), estado_inicial).