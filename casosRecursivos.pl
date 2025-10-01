% Hechos de actividades
cocina(ana).
trabaja(pedro).
trabaja(sofia).
estudia(maria).
estudia(juan).
descansa(juan).
juega(pedro).
estudia(sofia).
descansa(maria).

% Hechos de relaciones
% Amistades:
amigo(juan,ana).
amigo(juan,maria).
amigo(sofia,pedro).

% Familiares:
hermana(ana,pedro).
prima(maria,sofia).

% Rutinas:
cocina(ana, todosLosDias).
estudia(juan, entreSemana).
descansa(juan, finesDeSemana).
trabaja(pedro, lunesAViernes).
juega(pedro, sabados).
estudia(sofia, porLasNoches).
trabaja(sofia, porLasNoches).
descansa(sofia, domingos).

% Reglas de actividades
actividad(X) :- cocina(X).
actividad(X) :- estudia(X).
actividad(X) :- trabaja(X).
actividad(X) :- juega(X).

% Reglas de descanso
% X descansa si NO realiza ninguna actividad
descansa(X) :-
    \+ actividad(X).

% Reglas de parentesco
% Hermanos en ambos sentidos
hermanos(X, Y) :-
    hermana(X, Y).
hermanos(X, Y) :-
    hermana(Y, X).

% Primos en ambos sentidos
primos(X, Y) :-
    prima(X, Y).
primos(X, Y) :-
    prima(Y, X).

% Reglas recursivas
% Amistad recursiva
% Caso base: amistad directa entre dos personas (amigo/2).
amistad(X, Y) :-
    amigo(X, Y).
amistad(X, Y) :-
    amigo(Y, X).   % amistad es bidireccional

% Caso general: si X es amigo de Z, y Z tiene amistad (directa o indirecta) con Y,
% entonces X también es amigo de Y.
amistad(X, Y) :-
    amigo(X, Z),
    amistad(Z, Y),
    X \= Y.

% Miembro en lista
% Caso base: X está en la cabeza de la lista
miembro(X, [X|_]).

% Caso general: el elemento no está en la cabeza, se busca en la cola recursivamente.
miembro(X, [_|T]) :-
    miembro(X, T).

% Invertir lista
% Caso base: la lista vacía se invierte en lista vacía.
invertir([], []).

% Caso general: se invierte la cola de la lista y se agrega la cabeza al final.
invertir([H|T], R) :-
    invertir(T, RT),
    append(RT, [H], R).

% Rutina por dia
% Caso base: actividades específicas según día
% Se modelaron usando hechos como cocina(X, Dia), trabaja(X, Dia), etc.
% Luego, la regla actividad_dia/3 asocia cada acción con un día y un actor.
% Esto permite consultar qué hace una persona en un día específico,
% integrando actividades, estudio, trabajo, juego y descanso.
actividad_dia(X, Dia, Accion) :-
    cocina(X, Dia),
    Accion = cocinar.

actividad_dia(X, Dia, Accion) :-
    estudia(X, Dia),
    Accion = estudiar.

actividad_dia(X, Dia, Accion) :-
    trabaja(X, Dia),
    Accion = trabajar.

actividad_dia(X, Dia, Accion) :-
    juega(X, Dia),
    Accion = jugar.

actividad_dia(X, Dia, Accion) :-
    descansa(X, Dia),
    Accion = descansar.


% Nuevo personaje: Ariel
cocina(ariel).
estudia(ariel).
descansa(ariel, sabados).

% Relación de Ariel
amigo(ariel, juan).

% Nueva regla recursiva: es_familia/2
% Caso base: relación directa
es_familia(X, Y) :- hermanos(X, Y).
es_familia(X, Y) :- primos(X, Y).

% Caso general: si X es familia de Z y Z es familia de Y,
% entonces X también es familia de Y.
es_familia(X, Y) :-
    (hermanos(X, Z); primos(X, Z)),
    es_familia(Z, Y).

% Consultas nuevas
% ?- estudia(ariel).

% ?- es_familia(ariel, pedro).
