# pregunta preparcial: imprimir el resultado de una factura apartir de una lista de productos

defmodule TotalFactura do
  def main do
    IO.inspect(total([23, 45, 67]))
  end

  defp total(lista) do
    Enum.reduce(lista, 0, fn acc, x -> x + acc end)
  end
end

TotalFactura.main()
