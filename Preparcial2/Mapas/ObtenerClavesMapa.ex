# pregunta preparcial: obtener todas las claves de un mapa

defmodule ObtenerClaves do
  def main do
    persona = %{
      nombre: "brayan",
      edad: 19,
      ocupacion: "licenciado en educacion fisica"
    }

    obtener_claves(persona)
    obtener_valores(persona)
  end

  # la funcion " Map.keys() " retorna solo las claves del mapa
  defp obtener_claves(mapa) do
    Map.keys(mapa)
    |> IO.inspect()
  end

  # la funcion " Map.values() " retorna solo los valores de las claves del mapa
  defp obtener_valores(mapa) do
    Map.values(mapa)
    |> IO.inspect()
  end
end

ObtenerClaves.main()
