# pregunta preparcial: encontra el mayor valor de una lista usando recursividad

defmodule MayorElemento do
  def mian do
    IO.inspect(mayor_elemento([1, 2, 3, 4]))
  end

  defp mayor_elemento([]), do: 0

  defp mayor_elemento([cabeza | cola]) do
    # empieza a separar la cola en mas cabezas y colas [2,3,4] -> [2][3,4]
    max_cola = mayor_elemento(cola)
    # se usa una decicion para comparar las cabeza y cola resultantes
    if cabeza > max_cola, do: cabeza, else: max_cola
  end
end

# funcionamiento de la recursividad
# [1,2,3,4] -> [1][2,3,4] 1 < 4
# [2,3,4] -> [2][3,4] 2 < 4
# [3,4] -> [3][4] 3 < 4
# [4] -> [4][] 4 > 0

MayorElemento.mian()
