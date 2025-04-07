# pregunta preparcial: agregar un elemento a un mapa

defmodule AgregarElemento do
  def main do
    %{
      nombre: "luanna",
      edad: 17
    }
    |> agregar_clave(:ocupacion, "abogada")
  end

  defp agregar_clave(mapa, clave, valor) do
    # se usa la funcion "Map.put()" para agregar una clave con su respectivo valor
    Map.put(mapa, clave, valor)
    |> IO.inspect()
  end
end

AgregarElemento.main()
