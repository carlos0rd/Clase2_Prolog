estudiante(kelvin).
estudiante(raul).
estudiante(florence).
estudiante(fabricio).
estudiante(melissa).

%Usando el concepto de corte, obtener solo el primer estudiante de la lista
primer_estudiante(E) :-
    estudiante(E),    
    !.                
%Con fallo, listar todos los estudiantes usando 'fail'
mostrar_estudiantes :-
    estudiante(E),
    write('Estudiante: '), write(E), nl,
    fail.
mostrar_estudiantes.
%Entrada y salida, pedir al usuario que ingrese el nombre de un estudiante y verificar si es estudiante o no
verificar_estudiante :-
    write('Ingrese el nombre del estudiante: '), read(Nombre),
    (   estudiante(Nombre)
    ->  write('Si, '), write(Nombre), write(' es estudiante.')
    ;   write('No, '), write(Nombre), write(' no esta en la lista de estudiantes.')
    ), nl.