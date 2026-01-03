from pyswip import Prolog, Functor, Variable, Query
from tkinter import *

prolog=Prolog()

prolog.consult("hechos.pl")
prolog.consult("reglas.pl")

resultados = prolog.query("cancion(Cancion, Album), album(Album, _, muse)")

ventana = Tk()
ventana.geometry("400x300")

label = Label(ventana, text="Canciones de musito")
label2 = Label(ventana, text="Recomendamos")

label2.grid(row=0, column=2)
label.grid(row=1, column=0)

scrollbar = Scrollbar(ventana)
scrollbar.grid(row=0, column=1)
mylist = Listbox(ventana, yscrollcommand=scrollbar.set)

for line in resultados:
    mylist.insert(END, line["Cancion"])
mylist.grid(row=0, column=0)
scrollbar.config(command=mylist.yview)



ventana.mainloop()


    