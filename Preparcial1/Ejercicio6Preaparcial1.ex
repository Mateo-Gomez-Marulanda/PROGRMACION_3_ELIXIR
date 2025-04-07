# ejercicio 6 preparcial 1 registrar informacion de vehiculos que pasan
defmodule RegistroPeaje do
  def main do
    placa_vehiculo =
      "Ingrese la plata del vehiculo: "
      |> Util.ingresar_texto(:texto)

    tipo_vehiculo =
      "Ingrese el tipo de vehiculo: "
      |> Util.ingresar_texto(:texto)

    peso_vehiculo =
      "Ingrese el peso en toneladas del vehiculo: "
      |> Util.ingresar_real(:real)

    calcular_tarifa(tipo_vehiculo, peso_vehiculo)
    |> generar_mensaje(placa_vehiculo, tipo_vehiculo)
    |> Util.mostrar_mensaje()
  end

  defp calcular_tarifa(tipo_vehiculo, peso_vehiculo) do
    if tipo_vehiculo == "carro" do
      10000
    else
      if tipo_vehiculo == "moto" do
        5000
      else
        if tipo_vehiculo == "camion" do
          20000 + 2000 * peso_vehiculo
        end
      end
    end
  end

  defp generar_mensaje(tarifa, placa_vehiculo, tipo_vehiculo) do
    "Vehículo #{placa_vehiculo} (#{tipo_vehiculo}) debe pagar $#{tarifa}"
  end
end

RegistroPeaje.main()
