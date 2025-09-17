
% Definición del árbol del Olimpo
arbol_olimpo(
  arbol(caos,
    arbol(gea,
      arbol(cronos,
        arbol(hestia,nil,
          arbol(demeter,nil,
            arbol(hera,nil,
              arbol(zeus,
                arbol(hefesto,nil,
                  arbol(ares,nil,
                    arbol(dioniso,nil,
                      arbol(hermes,nil,
                        arbol(atenea,nil,
                          arbol(artemisa,nil,
                            arbol(apolo,nil,
                              arbol(afrodita,nil,nil))
                          )
                        )
                      )
                    )
                  )
                ),
                arbol(poseidon,nil,
                  arbol(hades,nil,nil))
              )
            )
          )
        ),
        arbol(rea,nil,nil)
      ),
      arbol(uranos,
        arbol(cronos,nil,
          arbol(rea,nil,nil)
        ),
        nil
      )
    ),
    nil
  )
).


% Validación básica
es_arbol(nil).
es_arbol(arbol(_, I, D)) :- es_arbol(I), es_arbol(D).


% Recorrido en POSTORDEN (Izq – Der – Raíz)
postorden(nil, []).
postorden(arbol(X, Izq, Der), L) :-
    postorden(Izq, L1),
    postorden(Der, L2),
    append(L1, L2, L3),
    append(L3, [X], L).


% Mostrar el recorrido postorden directamente
mostrar_postorden :-
    arbol_olimpo(A),
    postorden(A, L),
    write('Recorrido postorden:'), nl,
    forall(member(X, L), (write(X), nl)).


% Buscar un elemento usando el recorrido postorden
buscar(X) :-
    arbol_olimpo(A),
    postorden(A, L),
    member(X, L).


% Consultas de ejemplo:
% ?- mostrar_postorden.
% imprime todo el recorrido postorden en consola
% ?- buscar(hermes).
% true.
%
% ?- buscar(athena).
% false.
