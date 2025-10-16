%Familia, oficios y alizanza

%Personas
persona(esteban).
persona(mariela).
persona(clara).
persona(rodolfo).
persona(ismael).
persona(andres).
persona(sofia).
persona(teresa).
persona(lucas).
persona(martina).

%Relaciones
esposos(esteban, mariela).
esposos(andres, clara).
esposos(rodolfo, teresa).
esposos(alonso, beatriz).
esposos(mateo, irene).
esposos(catalina, andres).

amigo(hector, ismael).

%hijo(hijo, padre, madre)
hijo(clara, esteban, mariela).
hijo(rodolfo, esteban, mariela).
hijo(ismael, esteban, mariela).

hijo(sofia, andres, clara).

hijo(lucas, rodolfo, teresa).
hijo(martina, rodolfo, teresa).

%Oficios oficio(persona, oficio)
oficio(hector, herrero).
oficio(teresa, tejedora).
oficio(clara, maestra).
oficio(catalina, curandera).
oficio(felipe, exporador).
oficio(emilia, ceramista).
oficio(mateo, agricultor).
oficio(irene, ganadero).
oficio(lucas, herrero).

%Donde viven vive_en(persona, lugar)
vive_en(esteban, rivoria).
vive_en(mariela, rivoria).
vive_en(clara, rivoria).
vive_en(rodolfo, rivoria).
vive_en(teresa, rivoria).
vive_en(ismael, rivoria).
vive_en(lucas, rivoria).
vive_en(martina, rivoria).
vive_en(hector, rivoria).
vive_en(sofia, rivoria).

vive_en(alonso, montelar).
vive_en(beatriz, montelar).
vive_en(felipe, montelar).
vive_en(catalina, montelar).
vive_en(emilia, montelar).

vive_en(mateo, durania).
vive_en(irene, durania).

%Alianzas
alianza(rivoria, duraria).
alianza(duraria, rovoria).

%Rivalidades
rivalidad(rodolfo, felipe).
rivalidad(clara, catalina).

%Festividades
festividad(rivoria, fiesta_del_rio).
festividad(montela, ceremonia_de_la_luna).
festividad(durania, fereia_del_grano).

%creencias
espiritu_protector(rivoria, espiritu_del_agua).
espiritu_protector(montelar, espiritu_de_la_montana).
espiritu_protector(durania, espiritu_de_la_tierra).