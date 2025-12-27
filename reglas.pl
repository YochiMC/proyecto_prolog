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

%reglas para los me gusta
generosEscuchados(Lista) :- setof(Genero, X^Albumes^Album^AlbumCancion^     
(meGusta(X), 
    (
        (artista(X), albumesDe(X, Albumes), member(Album, Albumes), genero(Album, Genero));  
        (album(X, _, _), genero(X, Genero)); 
        (cancion(X, AlbumCancion), album(AlbumCancion, _, _), genero(AlbumCancion, Genero))
    )
), 
Lista), !.

% Reglas para los me gusta (CORREGIDA)
generosEscuchados(Lista) :- 
    findall(Genero,      
        (
            meGusta(X), 
            (
                % CASO 1: Si X es Artista -> Busca sus álbumes -> Luego el género del álbum
                (artista(X), album(Album, _, X), genero(Album, Genero));  
                
                % CASO 2: Si X es Álbum -> Saca el género directo
                (album(X, _, _), genero(X, Genero)); 
                
                % CASO 3: Si X es Canción -> Busca su álbum -> Luego el género del álbum
                (cancion(X, Album), genero(Album, Genero))
            )
        ), 
        ListaBruta
    ), 
    sort(ListaBruta, Lista). % sort elimina duplicados y ordena la lista final























