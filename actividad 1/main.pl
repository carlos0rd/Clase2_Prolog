% Ejercicio 2 – Aves
:- initialization(main).

% Aves
ave(loro).
ave(aguila).
ave(pinguino).

% Qué come cada ave
come(loro, semillas).
come(aguila, carne).
come(pinguino, pescado).

% Regla
comida(X) :- ave(X), X \= aguila.

main :-
    writeln('=== EJERCICIO 2 - AVES ==='),
    nl,
    
    % Pregunta 1: ¿Qué come el pingüino?
    writeln('1. ¿Qué come el pingüino?'),
    come(pinguino, Que1),
    write('   El pingüino come: '), writeln(Que1),
    nl,
    
    % Pregunta 2: ¿Qué animales son comida del águila?
    writeln('2. ¿Qué animales son comida del águila?'),
    writeln('   Animales que son comida del águila:'),
    forall(comida(Animal), (write('   - '), writeln(Animal))),
    nl,
    
    % Pregunta 3: ¿Es el loro un ave?
    writeln('3. ¿Es el loro un ave?'),
    (ave(loro) ->
        writeln('   Sí, el loro es un ave')
    ;   writeln('   No, el loro no es un ave')
    ).
