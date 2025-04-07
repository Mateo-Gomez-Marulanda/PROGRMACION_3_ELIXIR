# pregunta preparcial: obtener el valor de una keyword list
defmodule ObtenerValor do
  def main do
    [persona1: "Neymarisleidys", persona2: "Yorjander", persona3: "Yusmary"]
    |> obtener_valor(:persona1)
  end

  defp obtener_valor(lista,clave) do
    Keyword.get(lista, clave)
    |> IO.inspect()
  end
end

ObtenerValor.main()
