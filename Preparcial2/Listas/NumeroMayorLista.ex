# pregunta preparcial: hallar el mayor elementos de una lista
defmodule ElementoMayor do
  def main do
    IO.inspect(elemento_mayor([1, 47, 5, 7]))
  end

  defp elemento_mayor(lista) do
    # la funcion "Enum.max()" hallar el valor numerico mas grande de una lista
    Enum.max(lista)
  end
end

ElementoMayor.main()
