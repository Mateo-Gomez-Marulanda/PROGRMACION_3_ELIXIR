# pregunta preparcial: contar la cantidad de elementos de una lista

defmodule CantidadElementos do
  def main do
    IO.inspect(contar_elementos([1, 2, 3]))
  end

  defp contar_elementos([]), do: 0
  # no se tiene en cuenta la cabeza de la lista puesto que al sumar 1 ya se tiene en cuenta
  # sin la necesidad de utilizarla directamente
  defp contar_elementos([_ | cola]), do: 1 + contar_elementos(cola)
end

CantidadElementos.main()

# funcionamiento
# [1,2,3] -> [1][2,3] = 3
# [2,3] -> [2][3] = 2
# [3] -> [3][0] = 1
