# pregunta preparcial: invertir los elementos de una lista usando recursividad

defmodule InvertirElementos do
  def main do
    IO.inspect(invertir([1, 2, 3]))
  end

  defp invertir([]), do: []
  defp invertir([cabeza | cola]), do: invertir(cola) ++ [cabeza]
end

InvertirElementos.main()

# funcionamiento
# [1,2,3]  -> [3,2,1
# [2,3] -> [3,2]
# [3] -> [3]
