# pregunta preparcial: verificar si una clave existe en un mapa

defmodule VerificarClave do
  def main do
    %{
      nombre: "masequia",
      edad: 70,
      ocupacion: "loquito de la calle"
    }
    |> verificar_clave(:edad)
  end

  defp verificar_clave(mapa, clave) do
    # se usa la funcion "Map.has_key?()" para verificar que una clave existe
    Map.has_key?(mapa, clave)
    |> IO.inspect(label: "la clave #{clave} existe?")
  end
end

VerificarClave.main()
