# ejercicio para sumar los elementos de una lista
defmodule SumarElementos do
  def main do
    IO.inspect(sumar_elemntos([1, 2, 3, 4]))
  end

  defp sumar_elemntos(lista_numeros) do
    Enum.reduce(lista_numeros, 0, fn acc, x -> acc + x end)
  end
end

SumarElementos.main()
