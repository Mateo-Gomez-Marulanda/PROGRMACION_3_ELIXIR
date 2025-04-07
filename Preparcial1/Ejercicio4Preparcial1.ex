# ejercicio 4 preparcial conversion de unidades de temperatura
defmodule ConversionTemeperatura do
  def main do
    nombre_usuario =
      "Ingrese su nombre: "
      |> Util.ingresar_texto(:texto)

    temperatura_celcius =
      "Ingrese la temperatura en grados celcius: "
      |> Util.ingresar_real(:real)

    temperatura_fahrenheit = conversion_fahrenheit(temperatura_celcius)
    temperatura_kelvin = conversion_kelvin(temperatura_celcius)

    generar_mensaje(temperatura_fahrenheit, temperatura_kelvin, nombre_usuario)
    |> Util.mostrar_mensaje()
  end

  defp conversion_fahrenheit(temperatura_celcius) do
    temperatura_celcius * (9 / 5) + 32
  end

  defp conversion_kelvin(temperatura_celcius) do
    temperatura_celcius + 273.15
  end

  defp generar_mensaje(temperatura_fahrenheit, temperatura_kelvin, nombre_usuario) do
    "Señor/a #{nombre_usuario}, la temperatura es #{temperatura_fahrenheit} F y #{temperatura_kelvin} K"
  end
end

ConversionTemeperatura.main()
