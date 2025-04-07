# pregunta preparcial: sumar los elementos de una lista

defmodule SumaElementos do
  def main do
    IO.inspect(sumar_elementos([1, 2, 3, 4]))
  end

  def sumar_elementos([]), do: 0
  # separa la lista en cabeza y cola, [a,b,c,d] [a][b,c,d] luego se suma
  # la cabeza "a" y la cola se vueve a separar [b][c,d] repitiendo el proceso anterior
  # hasta llegar al caso base [] = 0
  def sumar_elementos([cabeza | cola]), do: cabeza + sumar_elementos(cola)
end

SumaElementos.main()

# [1,2,3,4] -> 1 + [2,3,4] -> 1 + 9 = 10
# [2,3,4] -> 2 + [3,4] -> 2 + 7 = 9
# [3,4] -> 3 + [4] -> 3 + 4 = 7
# [4] -> 4 + [] -> 4 + 0 = 4
# [] -> 0
