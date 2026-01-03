from pyswip import Prolog, Functor, Variable, Query

prolog=Prolog()

prolog.consult("hechos.pl")
prolog.consult("reglas.pl")

respuesta = next(prolog.query("album(X, 2003, muse)"), None)
respuesta2 = list(prolog.query("artista(michael)"))

print("Es un artista:", respuesta2)

print("El album es: ", respuesta["X"])

album = input("nombre del album crack: ")

for solucion in prolog.query(f"cancion(X, {album})"):
    print(solucion["X"], f"es canción del albúm {album}")
    

anio = input("¿De que año quieres indagar?")

albumes = next(prolog.query(f"albumesDel({anio}, Lista)"))

for j in albumes['Lista']:
    print(j, "es album del anio", anio)
    
print("Canciones de musito: ")

resultados = prolog.query("cancion(Cancion, Album), album(Album, _, muse)")

for i in resultados:
    print(i["Cancion"])
    
    