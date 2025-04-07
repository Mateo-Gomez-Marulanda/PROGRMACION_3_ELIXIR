# ejercicio 2 del preparcial 1 costo envio de paquete
defmodule CostoEnvio do
  def main do
    nombre_cliente =
      "Ingrese su nombre: "
      |> Util.ingresar_texto(:texto)

    peso_paquete =
      "ingrese el peso del paquete en kilogramos: "
      |> Util.ingresar_real(:real)

    tipo_envio =
      "ingrese el tipo de envio: "
      |> Util.ingresar_texto(:texto)

    aplicar_tarifa_envio(tipo_envio, peso_paquete)
    |> generar_mensaje(nombre_cliente)
    |> Util.mostrar_mensaje()
  end

  defp aplicar_tarifa_envio(tipo_envio, peso_paquete) do
    case tipo_envio do
      x when x == "economico" -> peso_paquete * 5000
      x when x == "express" -> peso_paquete * 8000
      x when x == "internacional" and peso_paquete <= 5.0 -> peso_paquete * 15000
      x when x == "internacional" and peso_paquete > 5.0 -> peso_paquete * 12000
    end
  end

  defp generar_mensaje(tarifa_envio, nombre_usuario) do
    "Señor/a #{nombre_usuario}, el costo de su paquete es: #{tarifa_envio}"
  end
end

CostoEnvio.main()
