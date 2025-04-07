# pregunta preparcial: imprimir unicamente los numeros pares de una lista

defmodule FiltrarPares do
  def main do
    IO.inspect(pares([1, 2, 3, 4, 5, 6]))
  end

  defp pares(lista) do
    Enum.filter(lista, fn x -> rem(x, 2) == 0 end)
  end
end

FiltrarPares.main()
