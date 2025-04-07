# pregunta del preparcial: hallar la cantidad de elementos de una lista

defmodule CantidadElementos do
  def main do
    IO.inspect(hallar_cantidad([1, 2, 3, 4, 5, 6]))
  end

  defp hallar_cantidad(lista) do
    # metodo para hallar la cantidad de elementos de una lista
    length(lista)
  end
end

CantidadElementos.main()
