# ejercicio para convertir una lista de temperaturas en Celcius a Fahrenheit (Unidad 1)
defmodule ConversionTemperatura do
  def main do
    temperaturas =
      [45, 100, 34, 6, -34]
      |> conversion_fahrenheit()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  defp conversion_fahrenheit(temperaturas) do
    # uso de la funcion map para aplicar la formula F = C * 1.8 + 32 a cada elemento
    # de la lista para realizar la conversion de temperaturas
    Enum.map(temperaturas, fn x -> x * 1.8 + 32 end)
  end

  defp generar_mensaje(temperaturas_fahrenheit) do
    # uso de la funcion Enum.join para imprimir un mensaje establecido, despues la lista
    # y separ cada elemento de la list con " "
    "las temperaturas en fahrenheit son: #{Enum.join(temperaturas_fahrenheit, ", ")}"
  end
end

IO.inspect(ConversionTemperatura.main())
