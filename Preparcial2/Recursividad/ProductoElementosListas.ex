# pregunta preparcial: multiplicar los elementos de una lista

defmodule ProductoLista do
  def main do
    IO.inspect(producto_elementos([1, 2, 3, 4]))
  end

  defp producto_elementos([]), do: 1
  defp producto_elementos([cabeza | cola]), do: cabeza * producto_elementos(cola)
end

ProductoLista.main()
