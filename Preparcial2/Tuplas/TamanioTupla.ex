# pregunta preparcial: obtener el tamaño de una tupla

defmodule ObtenerTamanio do
  def main do
    IO.inspect(tamanio_tupla({1, 2, 3, 4}))
  end

  defp tamanio_tupla(tupla) do
    # la funcion "tuple_size()" permite hallar el tamaño de una tupla
    tuple_size(tupla)
  end
end

ObtenerTamanio.main()
