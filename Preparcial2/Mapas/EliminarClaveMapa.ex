# pregunta preparcial: eliminar una clave de un mapa ya creado

defmodule EliminarClave do
  def main do
    %{
      nombre: "juan",
      edad: 18,
      ocupacion: "ingeniero"
    }
    |> eliminar_clave(:ocupacion)
  end

  defp eliminar_clave(mapa, clave)  do
    Map.delete(mapa, clave)
    |> IO.inspect()
  end
end

EliminarClave.main()
