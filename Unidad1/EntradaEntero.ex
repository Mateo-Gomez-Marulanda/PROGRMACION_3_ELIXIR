# ejemplo para calcular la duelta de un pago hecho por el usario

defmodule EntradaEnteros do
  def main do
    valor_total =
      "ingrese valor total de la factura "
      |> Util.ingresar_entero(:entero)

    valor_pago =
      "ingrese valor entregado para el pago "
      |> Util.ingresar_entero(:entero)

    calcular_devuelta(valor_pago, valor_total)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp calcular_devuelta(valor_pago, valor_total) do
    valor_pago - valor_total
  end

  defp generar_mensaje(devuelta) do
    "el valor de devuelta es $#{devuelta}"
  end
end

EntradaEnteros.main()
