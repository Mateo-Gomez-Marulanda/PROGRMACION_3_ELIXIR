# pregunta preparcial: agregar y eliminar un elemento a una keyword list

defmodule AgregarElemento do
  def main do
      [nombre: "Yusleidyberlis", edad: 25]
      |> agregar_nacionalidad()
      |> eliminar_edad()
  end

  # agregar elemento a una keyword list
  defp agregar_nacionalidad(lista) do
    Keyword.put(lista, :nacionalidad, "venezolano")
    |> IO.inspect()
  end

  # eliminar elemento en una keyword list
  defp eliminar_edad(lista) do
    Keyword.delete(lista, :edad)
    |> IO.inspect()
  end
end

AgregarElemento.main()
