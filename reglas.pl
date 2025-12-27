%archivo de reglas de prolog
%--por favor intentar describir cada una de las reglas

%aquí tenemos estas listas por años y artistas
albumesDe(Artista, Lista) :- findall(Album, album(Album, _, Artista), Lista), !.
albumesDel(Anio, Lista) :- findall(Album, album(Album, Anio, _), Lista), !.

%lista de integrantes de una banda o grupo
integrantes(Grupo, Lista) :- findall(Artista, parteDe(Artista, Grupo), Lista), !.

%lista de canciones de dicho album o artista
cancionesDelAlbum(Album, Lista) :- album(Album, _, _), findall(Cancion, cancion(Cancion, Album), Lista), !.
cancionesDelArtista(Artista, Lista) :- artista(Artista), findall(Cancion, (album(Album, _, Artista), cancion(Cancion, Album)), Lista), !.
cancionesDelAnio(Anio, Lista) :- findall(Cancion, (album(Album, Anio, _), cancion(Cancion, Album)), Lista), !.

%banda o grupo en el que ha participado un artista
participoEn(Artista, Grupo) :- artista(Artista), artista(Grupo), parteDe(Artista, Grupo).

%filtros por año X = rango inferior Y = rango superior X = año del album
filtrarAlbumesPorAnio(X, Y, Lista) :- findall(Album, (album(Album, Z, _), Z >= X, Z =< Y), Lista), !. %este es un filtro para un rango de años
albumesPorDecada(Decada, L) :- decada(Decada, X, Y), filtrarAlbumesPorAnio(X, Y, L), !. 
cancionesPorDecada(Decada, ListaCanciones) :- 
    albumesPorDecada(Decada, ListaAlbumes),
    findall(Cancion
        , (member(
            Album, ListaAlbumes), 
            cancion(Cancion, Album))
        , ListaCanciones), !.




generosNuevo(X, Generos) :- 
meGusta(X), 
    (artista(X), albumesDe(X, L), member(Album, L), findall(Genero, (album(Album, _, X), genero(Album, Genero)), Generos));
    (album(X, _, _), findall(Genero, genero(X, Genero), Generos));
    cancion(_, _)
, !.





















