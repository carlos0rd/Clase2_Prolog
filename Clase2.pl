% Personas presentes
persona(alice).
persona(robert).
persona(clara).
persona(james).


% Relaciones
esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

% Motivos (quién podría tener razones)
motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

% Medios (quién tuvo acceso al arma)
acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

% Oportunidad (quién estuvo en la biblioteca)
estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).



%Reglas
%Si estaba en la mansion entonces es un sospechoso
sospechoso(persona(X)):-persona(X).

%Quien tiene un motivo para matar
tiene_motivo(X):-motivo(X,_).

%Quien tuvo medios (Acceso al arma)
tuvo_medios(acceso(X)):-acceso(X,_).

%Quien tuvo oportunidad(Estuvo en la biblioteca)
estuvo_biblioteca(X):-estuvo(X, biblioteca).

%Tiene motivo y tuvo oportunidad
motivo_oportunidad(X):-estuvo_biblioteca(X), tiene_motivo(X).

%Quien tien el arma correcta
arma_correcta(X):-acceso(X, cuerda).

%El culpable
culpable(X):-estuvo_biblioteca(X), arma_correcta(X), tiene_motivo(X).

