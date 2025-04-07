# pregunta preparcial: verificar si existe un elemento en una lista

defmodule VerificarElemento do
  def main do
    IO.inspect(verificar_elemento([1, 3, 4, 5], 4))
  end

  defp verificar_elemento([cabeza | cola], n) do
    if cabeza == n do
      true
    else

      verificar_elemento(cola, n)
    end
  end
end

VerificarElemento.main()
