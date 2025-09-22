
%1. vive_en(Persona, Lugar). (Carlos)

%2. trabaja_en(Persona, Profesion). (Carlos)

%3. padre(Padre, Hijo). / madre(Madre, Hijo). (Carlos)

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