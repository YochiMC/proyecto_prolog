from tkinter import *
from pyswip import Prolog, Functor, Variable, Query

prolog=Prolog()

prolog.consult("hechos.pl")
prolog.consult("reglas.pl")
prolog.consult("like.pl")

def query_prolog(consulta):
    listaConsulta.delete(0, END)
    resultados = prolog.query(consulta)

    for r in resultados:
        for clave, valor in r.items():
            # Más de un elemento en la consulta
            if isinstance(valor, list):
                listaConsulta.insert(END, f"{clave}:")
                for elem in valor:
                    listaConsulta.insert(END, "  - " + str(elem))
            # Átomo 
            else:
                listaConsulta.insert(END, f"{clave}: {valor}")
        listaConsulta.insert(END, "")
    

ventana = Tk()
ventana.geometry("700x700")

frame_reglas = Frame(ventana)
frame_consultas = Frame(ventana)

# Frame IZQ
frame_reglas.place(relwidth=0.4, relheight=1)
frame_reglas.config(bg="lightblue")
frame_reglas.config(bd=15)
frame_reglas.config(relief="sunken")

# Zona de botones 
Button(frame_reglas, text="Álbumes del artista", font=('Consolas',11), command = lambda: query_prolog('albumesDe(Artista, Lista)')).pack(fill='x')
Button(frame_reglas, text="Álbumes del año", font=('Consolas',11), command= lambda: query_prolog('albumesDel(Anio, Lista)')).pack(fill='x')
Button(frame_reglas, text="Integrantes de un grupo", font=('Consolas',11), command= lambda: query_prolog('integrantes(Grupo, Lista)')).pack(fill='x')
Button(frame_reglas, text="Canciones de un álbum", font=('Consolas',11), command= lambda: query_prolog('cancionesDelAlbum(Album, Lista)')).pack(fill='x')
Button(frame_reglas, text="Canciones del artista", font=('Consolas',11), command= lambda: query_prolog('cancionesDelArtista(Artista, Lista)')).pack(fill='x')
Button(frame_reglas, text="Canciones del año", font=('Consolas',11), command=lambda: query_prolog('cancionesDelAnio(Anio, Lista)')).pack(fill='x')
Button(frame_reglas, text="Grupos en los que ha participado un artista", font=('Consolas',11), wraplength=250, command = lambda: query_prolog('participoEn(Artista, Grupo)')).pack(fill='x')
Button(frame_reglas, text="Canciones por decada", font=('Consolas',11), command=lambda: query_prolog('cancionesPorDecada(Decada, ListaCanciones)')).pack(fill='x')
Button(frame_reglas, text="Generos escuchados en base a los gustos", font=('Consolas',11), wraplength=250, command=lambda: query_prolog('generosEscuchados(Lista)')).pack(fill='x')
Button(frame_reglas, text="Generos principales de un artista", font=('Consolas',11),wraplength=250, command = lambda: query_prolog('generoPrincipalArtista(Artista, Lista)')).pack(fill='x')
Button(frame_reglas, text="Recomendar artistas", font=('Consolas',11), command=lambda: query_prolog('recomendarArtista(Lista)')).pack(fill='x')
Button(frame_reglas, text="Recomendar álbumes", font=('Consolas',11), command=lambda: query_prolog('albumesRecomendados(Lista)')).pack(fill='x')
Button(frame_reglas, text="Canciones aleatorias de un álbum", font=('Consolas',11),wraplength=250, command=lambda: query_prolog('cancionesAleatoriasAlbum(Album, Lista)')).pack(fill='x')
Button(frame_reglas, text="Canciones aleatorias de un artista", font=('Consolas',11),wraplength=250, command=lambda: query_prolog('cancionesAleatoriasArtista(Artista, Lista)')).pack(fill='x')
Button(frame_reglas, text="Recomendar canciones en base a los gustos", font=('Consolas',11),wraplength=250, command=lambda: query_prolog('juntarCanciones(Lista)')).pack(fill='x')


# Frame DER 
frame_consultas.place(relx=0.4, relwidth=0.6, relheight=1)
frame_consultas.config(bg="red")
frame_consultas.config(bd=15)
frame_consultas.config(relief="sunken")

# ListBox
listaConsulta = Listbox(frame_consultas, font=('Consolas', 12), fg='Black')
listaConsulta.pack(fill='both', expand=True)


# Loop 
ventana.mainloop()