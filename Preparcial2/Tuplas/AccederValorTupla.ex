# pregunta preparcial: acceder al primer valor de una tupla

defmodule AccederValor do
  def main do
    IO.inspect(acceder_valor({1, 2, 3, 4}))
  end

  defp acceder_valor(tupla) do
    # la funcion "elem()" busca el valor de una tupla en base a su posicion entre 0 y n
    elem(tupla, 0)
  end
end

AccederValor.main()
