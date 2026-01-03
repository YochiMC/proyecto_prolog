use_module(library(random)).
:- dynamic meGusta/1.


%archivo de reglas de prolog
%--por favor intentar describir cada una de las reglas

%aquí tenemos estas listas por años y artistas
albumesDe(Artista, Lista) :-
	findall(Album,
		album(Album, _, Artista),
		Lista),
	!.
albumesDel(Anio, Lista) :-
	findall(Album,
		album(Album, Anio, _),
		Lista),
	!.

%lista de integrantes de una banda o grupo
integrantes(Grupo, Lista) :-
	findall(Artista,
		parteDe(Artista, Grupo),
		Lista),
	!.

%lista de canciones de dicho album o artista
cancionesDelAlbum(Album, Lista) :-
	album(Album, _, _),
	findall(Cancion,
		cancion(Cancion, Album),
		Lista),
	!.
cancionesDelArtista(Artista, Lista) :-
	artista(Artista),
	findall(Cancion,
		(album(Album, _, Artista),
			cancion(Cancion, Album)),
		Lista),
	!.
cancionesDelAnio(Anio, Lista) :-
	findall(Cancion,
		(album(Album, Anio, _),
			cancion(Cancion, Album)),
		Lista),
	!.

%banda o grupo en el que ha participado un artista
participoEn(Artista, Grupo) :-
	artista(Artista),
	artista(Grupo),
	parteDe(Artista, Grupo).

%filtros por año X = rango inferior Y = rango superior X = año del album
filtrarAlbumesPorAnio(X, Y, Lista) :-
	findall(Album,
		(album(Album, Z, _),
			Z >= X,
			Z =< Y),
		Lista),
	!.%este es un filtro para un rango de años
	albumesPorDecada(Decada, L)  :- decada(Decada, X, Y),
	filtrarAlbumesPorAnio(X, Y, L),
	!. 
cancionesPorDecada(Decada, ListaCanciones) :-
	albumesPorDecada(Decada, ListaAlbumes),
	findall(Cancion,
		(member(Album, ListaAlbumes),
			cancion(Cancion, Album)),
		ListaCanciones),
	!.

%reglas para los me gusta
generosEscuchados(Lista) :-
	setof(Genero,
		X^Albumes^Album^AlbumCancion^(meGusta(X),
			((artista(X),
					albumesDe(X, Albumes),
					member(Album, Albumes),
					genero(Album, Genero));
(album(X, _, _),
					genero(X, Genero));
(cancion(X, AlbumCancion),
					album(AlbumCancion, _, _),
					genero(AlbumCancion, Genero)))),
		Lista),
	!.

% Reglas para los me gusta (CORREGIDA)
generosEscuchados(Lista) :-
	findall(Genero,
		(meGusta(X),
			(% CASO 1: Si X es Artista -> Busca sus álbumes -> Luego el género del álbum
			(artista(X),
					album(Album, _, X),
					genero(Album, Genero));
% CASO 2: Si X es Álbum -> Saca el género directo
(album(X, _, _),
					genero(X, Genero));
% CASO 3: Si X es Canción -> Busca su álbum -> Luego el género del álbum
(cancion(X, Album),
					genero(Album, Genero)))),
		ListaBruta),
	sort(ListaBruta, Lista).% sort elimina duplicados y ordena la lista final
	% Generos de los albums de un artista
	generosAlbumArtista(Artista, Lista)  :- artista(Artista),
	findall(Genero,
		(album(Album, _, Artista),
			genero(Album, Genero)),
		Lista).

% Genero principal del artista
% Elementos mas frecuentes de una lista (Generos en los albumes del artista)
% Alonso Jimenez, J. A. (sf). Ejercicios de programación declarativa con Prolog. Facialix.com. Recuperado el 28 de diciembre de 2025, de https://facialix.com/wp-content/uploads/2022/01/ej_prog_Prolog.pdf
populares(L1, L2) :-
	setof(X,
		((member(X, L1),
				cuenta(X, L1, N1),
				not((member(Y, L1),
						cuenta(Y, L1, N2),
						N1 < N2)))),
		L2).

cuenta(_, [], 0).
cuenta(A, [B|L], N):-
	A == B,
	!,
	cuenta(A, L, M),
	N is M + 1.
cuenta(A, [_B|L], N):-
	% A \== _B
cuenta(A, L, N).

generoPrincipalArtista(Artista, Lista):-
	artista(Artista),
	generosAlbumArtista(Artista, ListaGeneros),
	populares(ListaGeneros, Lista).

recomendarArtista(Lista) :-
	generosEscuchados(ListaGenerosGustan),
	findall(Artista,
		(generoPrincipalArtista(Artista, ListaGenerosArtista),
			member(X, ListaGenerosGustan),
			member(X, ListaGenerosArtista)),
		ListaR),
	sort(ListaR, Lista).

%Recomendar album en base a los generos
albumesRecomendados(Lista) :-
	generosEscuchados(Generos),
	findall(Album,
		(member(Genero, Generos),
			genero(Album, Genero)),
		ListaBruta),
	sort(ListaBruta, Lista),
	!.

%aleatorios para recomendaciones
cancionesAleatoriasAlbum(Album, Lista) :-
	cancionesDelAlbum(Album, ListaCanciones),
	random_permutation(ListaCanciones, Lista),
	!.
cancionesAleatoriasArtista(Artista, Lista) :-
	cancionesDelArtista(Artista, ListaCanciones),
	random_permutation(ListaCanciones, Lista),
	!.
juntarCanciones(Lista) :-
	albumesRecomendados(Albumes),
	%Esta funcion agarra canciones de los albumes que tienen alguna relacion con los generos que le gustan al usuario
	findall(Cancion,
		(member(Album, Albumes),
			cancionesDelAlbum(Album, Canciones),
			member(Cancion, Canciones)),
		ListaBruta),
	sort(ListaBruta, ListaCasiLista),
	random_permutation(ListaCasiLista, Lista),
	!.

navidenasNoventa(Lista) :-
	albumesPorDecada(noventas, Albumes),
	findall(Album,
		(member(Album, Albumes),
			tag(navidenas, Album)),
		Lista).

%-------------------------------Me Gusta --------------------------------------
%modificamos el archivo con la nueva informacion quee sta en memoria
guardarHechos :-
    tell('hechos.pl'),
    listing(meGusta),
    told.

agregarMeGusta(X) :-
    \+ meGusta(X),
    assertz(meGusta(X)).

% X solo es vlaido si existe como artista, album o cancion
existeHecho(X) :-
    artista(X)
    ;    
    album(X, _, _)
    ;
    cancion(X, _).

%reglita para añadir elementos con asserts pero aqui solo lo almacena en memoria, no lo guarda aun.
%recibimos el parametro del nuevo elemento  (chida pa ejecutar)
like(X) :-
	existeHecho(X),
    agregarMeGusta(X),
    guardarHechos.


%boorarr un meGusta de la base de memoria somalente
eliminarMeGusta(X) :-
    meGusta(X),
    retract(meGusta(X)).


% elimina un meGusta y actualiza el archivo de hechos.pl (chida pa ejecutar)
dislike(X) :-
    eliminarMeGusta(X),
    guardarHechos.

%pd, la chida para ejecutar es like y dislike, like ya valida si existe o uno en los hechos
%---------------------------Fin Me Gusta ----------------------------