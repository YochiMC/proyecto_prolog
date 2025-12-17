%archivo de reglas de prolog
%por favor intentar describir cada una de las reglas

%aquí tenemos estas listas por años y artistas
albumesDe(X, Lista) :- findall(Album, (album(Album, _, X)), Lista), !.
albumesDel(X, Lista) :- findall(Album, album(Album, X, _), Lista), !.

%lista de integrantes de una banda o grupo
integrantes(X, Lista) :- findall(Artista, parteDe(Artista, X), Lista), !.

%lista de canciones de dicho album
cancionesDe(X, Lista):- findall(Cancion, cancion(Cancion, X, _), Lista), !.

%banda o grupo en el que ha participado un artista
participoEn(X, Y) :- parteDe(X, Y), banda_grupo(Y).






