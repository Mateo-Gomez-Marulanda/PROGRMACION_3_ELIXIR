# pregunta preparcial: cambiar el valor de una tupla

defmodule ModificarValor do
  def main do
    IO.inspect(modificar_valor({1, 2, 3, 4}))
  end

  defp modificar_valor(tupla) do
    # la funcion "put_elem()" cambiar el valor indicado de una tupla segun su posicion
    put_elem(tupla, 1, 69)
  end
end

ModificarValor.main()
