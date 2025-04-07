# ejercicio 2 del preparcial 1 control inventario de una farmacia
defmodule ControlInventario do
  def main do
    nombre_medicamento =
      "Ingrese el nombre del medicamento: "
      |> Util.ingresar_texto(:texto)

    cantidad_disponible =
      "Ingrese las cantidades disponibles del producto: "
      |> Util.ingresar_entero(:entero)

    valor_unitario =
      "Ingrese el valor por unidad del medicamento: "
      |> Util.ingresar_real(:real)

    valor_total_medicamento(cantidad_disponible, valor_unitario)
    |> generar_mensaje(cantidad_disponible, nombre_medicamento)
    |> Util.mostrar_mensaje()
  end

  defp valor_total_medicamento(cantidad_disponible, valor_unitario) do
    cantidad_disponible * valor_unitario
  end

  defp generar_mensaje(valor_total, cantidad_disponible, nombre_medicamento) do
    "El medicamento #{nombre_medicamento} tiene #{cantidad_disponible} unidades, con un valor total de $#{valor_total}."
  end
end
ControlInventario.main()
