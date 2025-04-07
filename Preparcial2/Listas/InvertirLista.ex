# pregunta preparcial: invertir la posicion de los elementos de una lista
defmodule InvertirElementos do
  def main do
    IO.inspect(invertir([1, 2, 3, 4]))
  end

  defp invertir(lista) do
    # metodo para invertir los elementos de una lista
    Enum.reverse(lista)
  end
end
InvertirElementos.main()
