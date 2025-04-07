# ejercicio preparcial 1 calcular el consumo de combustible

defmodule ConsumoCombustible do
  def main do
    nombre_usuario =
      "ingrese su nombre: "
      |> Util.ingresar_texto(:texto)

    distancia_recorrida =
      "ingrese la distancia recorrida en kilometros: "
      |> Util.ingresar_real(:real)

    combustible_consumido =
      "ingrese el combustible consumido en litro: "
      |> Util.ingresar_real(:real)

    calcular_rendimiento(distancia_recorrida, combustible_consumido)
    |> generar_mensaje(nombre_usuario)
    |> Util.mostrar_mensaje()
  end

  defp calcular_rendimiento(distancia, combustible_recorrido) do
    distancia / combustible_recorrido
  end

  defp generar_mensaje(rendimiento, nombre) do
    "Señor/a #{nombre}, el rendimiendo del combustible ha sido de #{rendimiento} Km / L"
  end
end

ConsumoCombustible.main()
