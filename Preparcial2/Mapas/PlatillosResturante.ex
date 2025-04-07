# pregunta preparcial: Un restaurante almacena información de sus platillos en un
# mapa: nombre del platillo, precio y si está disponible (true o false). Se
# debe imprimir la información y verificar si el platillo está disponible

defmodule Menu do
  def main do
    platillo = %{
      nombre: "salchipapa",
      precio: 15000,
      disponivilidad: false
    }

    informacion_platillo(platillo)
    consultar_disponivilidad(platillo)
  end

  # se obtienen los valores de las claves del platillo
  defp informacion_platillo(platillo) do
    Map.values(platillo)
    |> IO.inspect(label: "la descripcion del platillo es")
  end

  # imprime un mensaje en base a su disponivilidad (true o false)
  defp consultar_disponivilidad(platillo) do
    if Map.get(platillo, :disponivilidad) == true do
      IO.puts("El platillo esta disponible")
    else
      IO.puts("El platillo no esta disponible")
    end
  end
end

Menu.main()
