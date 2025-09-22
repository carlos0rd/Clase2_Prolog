%-----------Parte 1:  Verbos para construir la base de conocimiento-----------
%1. vive_en(Persona, Lugar). (Carlos)
vive_en(ernesto, valle verde).
vive_en(teresa, valle verde).
vive_en(ana, valle verde).
vive_en(carlos, capital).
vive_en(sofia, capital).
vive_en(mateo, capital).
vive_en(valeria, capital)
vive_en(andres, valle verda).
vive_en(lucia, capital).
vive_en(ricardo, capital).
vive_en(laura, capital).
vive_en(daniel, capital).
vive_en(miguel, valle verde).
vive_en(rosa, valle verde).
vive_en(fernanda, valle verde).
vive_en(carmen, valle verde).
vive_en(isabel, valle verde).
vive_en(felipe, valle verde).
vive_en(joaquin, valle verde)


%2. trabaja_en(Persona, Profesion). (Carlos)
trabaja_en(ernesto, jubilado).
trabaja_en(teresa, jubilada).
trabaja_en(carlos, constructora).
trabaja_en(sofia, arquitecta).
trabaja_en(ana, profesora).
trabaja_en(ricardo, abogado).
trabaja_en(laura, bibliotecaria).
trabaja_en(miguel, cultivos).
trabaja_en(rosa, tienda).
trabaja_en(felipe, tienda de ropa).


%3. padre(Padre, Hijo). / madre(Madre, Hijo). (Carlos)
padre(ernesto, carlos).
padre(ernesto, ana).
padre(ernesto, lucia).
padre(carlos, mateo).
padre(carlos, valeria).
padre(miguel, fernanda).
padre(felipe, joaquin)

madre(teresa, carlos).
madre(teresa, ana).
madre(teresa, lucia).
madre(sofia, mateo).
madre(sofia, valeria).
madre(ana, andres).
madre(rosa, fernanda)


%4. casado_con(Persona1, Persona2). (Henry)
casado_con(ernesto,teresa).
casado_con(carlos,sofia).
casado_con(ricardo,laura).
casado_con(miguel,rosa).
%5. hijo(Hijo, Padre). (Henry)
%ernesto y teresa
hijo(carlos,ernesto).
hijo(ana,ernesto).
hijo(lucia,ernesto).
hijo(carlos,teresa).
hijo(ana,teresa).
hijo(lucia,teresa).

%carlos y sofia
hijo(mateo,carlos).
hijo(valeria,carlos).
hijo(mateo,sofia).
hijo(valeria,sofia).

%ricardo y laura
hijo(daniel,ricardo).
hijo(daniel,laura).

%miguel y rosa
hijo(fernanda,miguel).
hijo(fernanda,rosa).
%6. amigo(Persona1, Persona2). (José)
amigo(carlos, ricardo).
amigo(daniel, mateo).

%7. primo(Persona1, Persona2). (José)
primo(lucia, daniel).

%-----------Parte 2: Define reglas en Prolog---------------
%determine si alguien es abuelo/abuela
abuelo(x,y):- padre(X,Z),padre(Z,Y).
abuela(x,y):- madre(X,Z),madre(Z,Y).

%determine si dos personas son hermanos/as
hermano(X,Y):- padre(P,X),padre(P,Y),X\=Y.
hermana(X,Y):- madre(M,X),madre(P,Y),X\=Y.

%determine si alguien es tio/tia
tio(X,Y):- hermano(X,Z),padre(Z,Y).
tia(X,Y):- hermana(X,Z),madre(Z,Y).

%definir la relacion de primos/as
primos(X,Y):- primo(X,Y);padre(Y,X).

%verificar si alguien es amigo de un primo
amigo_de_primo(X,Y):- amigo(X,Z),primos(Z,Y).

%-----------Parte 3: Realiza consultas en Prolog-----------
%1 ¿Quiénes son los hijos de Ernesto?
%?- hijo(H, ernesto).

%2 ¿Quién es abuelo de Mateo?
%?- abuelo(A, mateo).

%3 ¿Existen dos personas que sean hermanos? (usar ;).
%?- (hermano(X,Y); hermana(X,Y)).

%4 Encontrar todas las madres de la base de conocimiento.
%?- madre(M,H).

%5 Consultar si Mateo y Daniel son amigos.
%?- amigo(mateo, daniel).

%6 Verificar si Andrés es primo de Fernanda.
%?- primo(ricardo, fernanda).

%7 ¿Existe alguien que no sea padre ni madre? (uso de not/1).
%?- not(padre(X,)), not(madre(X,)).

%8 ¿En qué lugar vive cada miembro de la familia?
%?- vive_en(Persona, Lugar).