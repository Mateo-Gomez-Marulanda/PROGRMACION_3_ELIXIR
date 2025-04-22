# ejemplo 05/03/2025 para ver como se usar el case en elixir
defmodule EjemploCase do
  def main do
      "ingrese el metodo de pago: "
      |> Util.ingresar_texto(:texto)
      |> descuento_metodo_pago()
  end

  defp descuento_metodo_pago(metodo_pago) do
    case metodo_pago do
      "efectivo" -> "tendra un 10% de descuento"
      "tarjeta de credito" -> "tendra un 5% de descuento"
      "transaccion bancaria" -> "tendra un 7% de descuento"
      _ -> "no tiene descuento"
    end
  end
end

IO.puts(EjemploCase.main())
