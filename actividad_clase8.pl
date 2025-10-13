% 📘 SISTEMA DE EMPLEADOS EN PROLOG
:- dynamic empleado/3.

% Hechos iniciales
empleado('Ana',   contabilidad, 900).
empleado('Luis',  sistemas,     1200).
empleado('Sofia', marketing,    1100).

% ---------- Utilidades de impresion ----------
imprimir_menu :-
    writeln('% SISTEMA DE EMPLEADOS INICIADO'),
    writeln('% ========= MENU ========='),
    writeln('% 1. Listar empleados'),
    writeln('% 2. Agregar empleado'),
    writeln('% 3. Eliminar empleado'),
    writeln('% 4. Actualizar empleado'),
    writeln('% 5. Agregar con validacion'),
    writeln('% 6. Eliminar todos'),
    writeln('% 0. Salir'),
    writeln('% ========================').

cabecera_lista :-
    writeln(''),
    writeln('% --- LISTA DE EMPLEADOS ---').
pie_lista :-
    writeln('% ----------------------------'),
    writeln('').

% ---------- Operaciones ----------
listar_empleados :-
    cabecera_lista,
    (   empleado(N, D, S),
        format('% Nombre: ~w | Depto: ~w | Salario: $~w~n', [N, D, S]),
        fail
    ;   true
    ),
    pie_lista.

agregar_empleado(Nombre, Depto, Salario) :-
    asserta(empleado(Nombre, Depto, Salario)),
    format('% Se agrego a ~w en el departamento ~w con salario $~w.~n',
           [Nombre, Depto, Salario]),
    writeln('').

eliminar_empleado(Nombre) :-
    retract(empleado(Nombre, Depto, Salario)),
    format('% Se elimino a ~w del departamento ~w (salario $~w).~n',
           [Nombre, Depto, Salario]),
    writeln(''),
    !.
eliminar_empleado(_Nombre) :- true.

actualizar_empleado(Nombre, NuevoDepto, NuevoSalario) :-
    retract(empleado(Nombre, _, _)),
    asserta(empleado(Nombre, NuevoDepto, NuevoSalario)),
    format('% Datos actualizados: ~w -> Depto: ~w | Salario: $~w~n',
           [Nombre, NuevoDepto, NuevoSalario]),
    writeln(''),
    !.
actualizar_empleado(_, _, _) :- true.

agregar_con_validacion(Nombre, Depto, Salario) :-
    (   empleado(Nombre, _, _)
    ->  format('% ~w ya existe. No se agrego.~n', [Nombre]), writeln('')
    ;   agregar_empleado(Nombre, Depto, Salario)
    ).

eliminar_todos :-
    retractall(empleado(_,_,_)),
    writeln('% Todos los empleados han sido eliminados de la base.'),
    writeln('').

% ---------- SIMULACION EXACTA DE LA SESION ----------
main :-
    % Encabezado como en el ejemplo (lineas de comentario de contexto)
    writeln('% =========================================='),
    writeln('% 📘 SISTEMA DE EMPLEADOS EN PROLOG'),
    writeln('% Simulacion de una sesion interactiva con el menu principal'),
    writeln('% =========================================='),
    writeln(''),
    % Inicio
    writeln('% Inicio del sistema'),
    writeln('?- main.'),
    imprimir_menu,
    writeln('% Seleccione una opcion: 1.'),
    listar_empleados,

    % Opcion 2: Agregar
    writeln('% Seleccione una opcion: 2.'),
    writeln('% Nombre: \'Carlos\'.'),
    writeln('% Departamento: \'ventas\'.'),
    writeln('% Salario: 950.'),
    agregar_empleado('Carlos', ventas, 950),

    % Opcion 4: Actualizar
    writeln('% Seleccione una opcion: 4.'),
    writeln('% Nombre: \'Luis\'.'),
    writeln('% Nuevo departamento: \'infraestructura\'.'),
    writeln('% Nuevo salario: 1400.'),
    actualizar_empleado('Luis', infraestructura, 1400),

    % Opcion 3: Eliminar
    writeln('% Seleccione una opcion: 3.'),
    writeln('% Nombre a eliminar: \'Ana\'.'),
    eliminar_empleado('Ana'),

    % Opcion 1: Listar
    writeln('% Seleccione una opcion: 1.'),
    listar_empleados,

    % Fin
    writeln('% Fin de la simulacion de sesion del sistema de empleados'),
    writeln('% ==========================================').
