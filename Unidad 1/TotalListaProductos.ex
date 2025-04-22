# ejercicio  para hallar el valor de total de una compra (unidad 1)

defmodule ListaProductos do
  def main do
    valor_productos = [34, 56, 90, 74]
      |> total_lista_producto()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  defp total_lista_producto(valor_productos) do
    Enum.reduce(valor_productos, 0, fn acc, x -> x + acc end)
  end

  defp generar_mensaje(total_lista) do
    # imprime el valor de la suma de los productos
    "El valor total de los proctudos es: #{total_lista}"
  end
end

IO.inspect(ListaProductos.main())
