# pregunta preparcial: concatenar dos tuplas

defmodule ConcatenerTupla do
  def main do
    IO.inspect(concatenar_tuplas({1, 2}, {3, 4}))
  end

  defp concatenar_tuplas(tupla1, tupla2) do
    # debido que no se pueden sumar tuplas en elixir se hace los siguiente
    # la cantidad de tuplas se convierte en lista y se usa "++" para sumarlas
    (Tuple.to_list(tupla1) ++ Tuple.to_list(tupla2))
    # el resultado obtenido es una lista
    # se usa la funcion "List.to_tuple()" para convertir el resultado en una tupla
    |> List.to_tuple()
  end
end

ConcatenerTupla.main()
