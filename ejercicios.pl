%autor henry martinez
%Ejercicio 4: Mayor de dos números - Crear predicado mayor/3.
mayor(X, Y, X) :- X >= Y.
mayor(_, Y, Y).
mayor(X, Y, Y) :- X < Y.

%Ejercicio 5: Rango de edad - Crear predicado categoria_edad/1.
categoria_edad(Edad) :- Edad >= 0, Edad =< 12, write('Niño'), nl.
categoria_edad(Edad) :- Edad >= 13, Edad =< 19, write('Adolescente'), nl.
categoria_edad(Edad) :- Edad >= 20, Edad =< 59, write('Adulto'), nl.
categoria_edad(Edad) :- Edad >= 60, write('Adulto mayor'), nl.
categoria_edad(_) :- write('Edad inválida'), nl.

%Ejercicio 6: Nota de aprobación - Crear predicado aprobo/1.
aprobo(Nota) :- Nota >= 60, write('Aprobado'), nl.
aprobo(Nota) :- Nota < 60, write('Reprobado'), nl.
aprobo(_) :- write('Nota inválida'), nl.

%Ejercicio 14: Calculadora sencilla - Crear predicado calculadora/4.
calculadora(X, Y, '+', Resultado) :- Resultado is X + Y.
calculadora(X, Y, '-', Resultado) :- Resultado is X - Y.
calculadora(X, Y, '*', Resultado) :- Resultado is X * Y.
calculadora(X, Y, '/', Resultado) :- Y \= 0, Resultado is X / Y.
calculadora(_, 0, '/', _) :- write('Error: División por cero'), nl.
calculadora(_, _, Operacion, _) :- 
    \+ member(Operacion, '+', '-', '*', '/'), 
    write('Error: Operación inválida'), nl.




