# ejercico de uso de mapas 19/03/2025
defmodule Maps do
  def main do
    # agrega ciudad: "Bogotá"
    %{nombre: "Pepito", edad: 30}
    |> Map.put("ciudad", "bogota")
    |> IO.inspect()

    # incrementa la edad en 1
    %{nombre: "Pepito", edad: 30}
    |> Map.update(:edad, 30, fn edad -> edad + 1 end)
    |> IO.inspect()

    # Extrae el valor de :nombre
    %{nombre: "Pepito", ciudad: "Bogotá"}
    |> Map.get(:nombre, "Desconocido")
    |> IO.inspect()

    # unir dos mapas diferentes
    mapa1 = %{nombre: "Pepito"}
    mapa2 = %{edad: 30, ciudad: "Bogotá"}

    Map.merge(mapa1, mapa2)
    |> IO.inspect()
  end
end

Maps.main()
