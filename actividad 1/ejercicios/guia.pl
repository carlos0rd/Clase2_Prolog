% 1. Operadores Aritméticos
% Ejercicio 1: Cálculo de área y perímetro - Crear predicado rectangulo/3.
rectangulo(Longitud, Ancho, area_perimetro(Area, Perimetro)) :-
    Area is Longitud * Ancho,
    Perimetro is 2 * (Longitud + Ancho).

% Ejercicio 2: Número par o impar - Crear predicado par_impar/1.
par_impar(Numero) :-
    (   Numero mod 2 =:= 0
    ->  write(Numero), write(' es un numero par.'), nl
    ;   write(Numero), write(' es un numero impar.'), nl
    ).
% Ejercicio 3: Tabla de multiplicar - Crear predicado tabla_multiplicar/1.
tabla_multiplicar(Numero) :-
    between(1, 10, I),
    Resultado is Numero * I,
    write(Numero), write(' x '), write(I), write(' = '), write(Resultado), nl,
    fail.

% --------------------------------------------------

% 2. Operadores Relacionales
% Ejercicio 4: Mayor de dos números - Crear predicado mayor/3.
mayor(A, B, Mayor) :-
    (   A > B
    ->  Mayor = A
    ;   Mayor = B
    ).

% Ejercicio 5: Rango de edad - Crear predicado categoria_edad/1.
categoria_edad(Edad, Categoria) :-
    (
        Edad < 13 -> Categoria = 'Niño';
        Edad >= 13, Edad < 20 -> Categoria = 'Adolescente';
        Edad >= 20, Edad < 65 -> Categoria = 'Adulto';
        Edad >= 65 -> Categoria = 'Anciano'
    )

% Ejercicio 6: Nota de aprobación - Crear predicado aprobo/1.
aprobo(Nota) :-
    (   Nota >= 60
    ->  write('Aprobado'), nl
    ;   write('Reprobado'), nl
    ).


% --------------------------------------------------

% 4. Funciones Arirtméticas Predeterminadas
% Ejercicio 10: Distancia entre dos puntos - Crear predicado distancia/5.
distancia(X1, Y1, X2, Y2, Distancia) :-
    Distancia is sqrt((X2 - X1)^2 + (Y2 - Y1)^2).

% Ejercicio 11: Conversión de grados a radianes - Crear grados_a_radianes/2.
grados_a_radianes(Grados, Radianes) :-
    Radianes is Grados * pi / 180.

% Ejercicio 12: Promedios y extremos - Crear analisis/3
analisis(Lista, Promedio, extremos(Min, Max)) :-
    Lista \= [],
    sum_list(Lista, Suma),
    length(Lista, Longitud),
    Longitud > 0,
    Promedio is Suma / Longitud,
    min_list(Lista, Min),
    max_list(Lista, Max).

% Ejercicio 13: Estadísticas - Usar abs, round, floor, ceiling
estadisticas(Numero, stats(Absoluto, Redondeado, Piso, Techo)) :-
    Absoluto is abs(Numero),
    Redondeado is round(Numero),
    Piso is floor(Numero),
    Techo is ceiling(Numero).

% --------------------------------------------------

% 5. Desafíos integrados
%Ejercicio 16: Sistema de calificaciones - Calcular nota máxima, mínima y promedio de una lista
notas(ListNotas, Promedio, min_max(Min, Max)) :-
    ListNotas \= [],
    sum_list(ListNotas, Suma),
    length(ListNotas, Longitud),
    Longitud > 0,
    Promedio is Suma / Longitud,
    min_list(ListNotas, Min),
    max_list(ListNotas, Max).