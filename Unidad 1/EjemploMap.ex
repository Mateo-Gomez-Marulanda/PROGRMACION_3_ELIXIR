# ejemplo de la funcion map basado en sistema para aplicar iva 04/03/2025

defmodule EjemploMap do
  def main do
    # lista en la que se guardan el valor de los productos
    productos =
      [23, 34, 21, 100]
      |> aplicar_IVA()
  end

  defp aplicar_IVA(productos) do
    Enum.map(productos, fn x -> x * 1.19 end)
  end
end

IO.inspect(EjemploMap.main())
