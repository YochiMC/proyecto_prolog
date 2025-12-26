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
filtrarAlbumesPorAnio(X, Y, Lista) :- findall(Album, (album(Album, Z, _), Z > X, Z < Y), Lista), !. %este es un filtro para un rango de años

%reglas para los me gusta
generosEscuchados(Lista) :- findall(Genero,     
(meGusta(X), 
    (
        (artista(X), genero(X, Genero)); 
        (album(X, _, _), genero(X, Genero)); 
        (cancion(X, _), genero(X, Genero))
    )
), 
Lista), !.






