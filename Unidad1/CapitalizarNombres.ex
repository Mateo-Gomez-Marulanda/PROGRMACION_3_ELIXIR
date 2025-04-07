# ejercicio para Capitalizar una lista de nombres (Unidad 1)
defmodule CapitalizarLista do
  def main do
    nombres =
      ["juan", "pedro", "sebastian", "delinyer"]
      |> capitalizar()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  defp capitalizar(nombres) do
    # uso de String.capitalize() para hacer que la  primera letra de cada nombre se vuelva
    # mayuscula siendo el parametro "x" la lista
    Enum.map(nombres, fn x -> String.capitalize(x) end)
  end

  defp generar_mensaje(nombres_capitalizados) do
    "los nombres ahora son: #{Enum.join(nombres_capitalizados, ", ")}"
  end
end

IO.inspect(CapitalizarLista.main())
