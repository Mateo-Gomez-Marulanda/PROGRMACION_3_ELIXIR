#ejemplo 1 17/02/2025

#def modulo es el principal
defmodule Mensaje do
  def main do
    "Hola mundo" #mensaje a imprimir
     # imprimir el "hola mundo" llamando a la funcion mostrar_mensaje() del modulo Util
    |> Util.mostrar_mensaje
  end
end

Mensaje.main() #ejecutar la funcion modulo mediente el main (o algo asi XD)
