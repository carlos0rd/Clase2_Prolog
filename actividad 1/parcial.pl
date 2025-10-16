personaje(shrek).
personaje(fiona).
personaje(burro).
personaje(farquaad).
personaje(dragon).
personaje(enanos).
personaje(hadas).
personaje(lobos).
personaje(osos).
personaje(muneco_jengibre).

vive_en(shrek, pantano).
vive_en(burro, pantano).
vive_en(fiona, pantano).           
vive_en(fiona, castillo).
vive_en(enanos, pantano).
vive_en(hadas, pantano).
vive_en(lobos, pantano).
vive_en(osos, pantano).
vive_en(muneco_jengibre, pantano).

amistad(shrek, burro).

amigo(X, Y) :- amistad(X, Y).
amigo(X, Y) :- amistad(Y, X).

rescata(shrek, fiona).
rescata(burro, fiona).

desea(farquaad, fiona).

transforma_en(fiona, ogra).

feroz(dragon).

enfrenta(shrek, dragon).

valiente(X) :- enfrenta(X, dragon).
valiente(X) :- rescata(X, _).

llego_al_pantano_expulsado(X) :-
    personaje(X), X \= shrek, X \= farquaad, X \= fiona, X \= burro, X \= dragon.

%CONSULTAS
% 1) ¿Quién vive en el pantano?
% ?- vive_en(X, pantano).

% 2) ¿Quiénes son amigos de Shrek?  // usa regla
% ?- amigo(shrek, X).

% 3) ¿Quién desea casarse con Fiona?
% ?- desea(X, fiona).

% 4) ¿Shrek rescata a Fiona?
% ?- rescata(shrek, fiona).

% 5) ¿Qué personaje se transforma por las noches?
% ?- transforma_en(X, ogra).

% 6) ¿Quién es valiente?  // usa regla
% ?- valiente(X).

% 7) ¿Quién es feroz?
% ?- feroz(X).

% 8) ¿Qué personajes llegaron al pantano expulsados del reino?
% ?- llego_al_pantano_expulsado(X)