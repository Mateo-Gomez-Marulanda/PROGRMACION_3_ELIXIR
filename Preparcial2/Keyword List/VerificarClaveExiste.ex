# pregunta preparcial: verificar que una clave existe en una keyword list

defmodule VerificarExistencia do
  def main do
    [nombre: "pedro", edad: 14]
    |> verificar_clave(:nombre)
  end

  defp verificar_clave(lista, clave) do
    Keyword.has_key?(lista, clave)
    |> IO.inspect()
  end
end
VerificarExistencia.main()
