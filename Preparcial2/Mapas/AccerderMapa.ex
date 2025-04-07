# pregunta preparcial: crear y acceder a un mapa en base a una clave

defmodule AccederMapa do
  def main do
    %{
      nombre: "pacho",
      edad: 47,
      ocuapacion: "profesor"
    }
    |> acceder_informacion(:nombre)
  end

  defp acceder_informacion(mapa, clave) do
    Map.get(mapa, clave)
    |> IO.inspect()
  end
end

AccederMapa.main()
