%- Ejercicio 7: Unificación de estructuras - Crear predicado es_hermano/2.
unificar :-
    A = es_hermano(juan, maria),
    write('Unificacion exitosa: '), write(A), nl.

%- Ejercicio 8: Comparación estricta - Probar diferencias entre =, == y \==.
comparacion :-
    X = 5, Y = 5,
    (X == Y -> write('X y Y son estrictamente iguales.') ; write('X y Y no son estrictamente iguales.')),nl,
    (X \== 6 -> write('X y 6 son diferentes.') ; write('X y 6 son iguales.')),nl,
    (X = 5 -> write('X se unifico con 5.') ; write('X no se unificó con 5.')),nl.
%- Ejercicio 15: Triángulo rectángulo - Crear hipotenusa/3.
hipotenusa(A, B) :-
    C is sqrt(A*A + B*B),
    write('La hipotenusa es: '), write(C), nl.



