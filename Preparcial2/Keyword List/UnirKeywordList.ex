# pregunta preparcial para unir dos keyword list

defmodule UnirListas do
  def main do
    lista1 = [nombre: "pedro", edad: 19]
    lista2 = [nacionalidad: "colombiano", ocupacion: "estudiante"]
    unir_listas(lista1, lista2)
  end

  defp unir_listas(lista1, lista2) do
    # debido a que las keyword list tambien son listas se pueden sumar de la misma forma
    (lista1 ++ lista2)
    |> IO.inspect()
  end
end

UnirListas.main()
