# ejercicio palabras clave 19/03/2025
defmodule PalabrasClave do
  def main do
    # acceder al dato "tiempo"
    [modo: :rapido, tiempo: 10, activo: true]
    |> Keyword.get(:tiempo)
    |> IO.inspect()

    # cambiar el valor "nivel"
    [modo: :seguro, nivel: 3]
    |> Keyword.put(:nivel, 5)
    |> IO.inspect()

    # convertir de Keyword a map
    [nombre: "Pepito", edad: 30, ciudad: "Bogotá"]
    |> Enum.into(%{})
    |> IO.inspect()
  end
end

PalabrasClave.main()
