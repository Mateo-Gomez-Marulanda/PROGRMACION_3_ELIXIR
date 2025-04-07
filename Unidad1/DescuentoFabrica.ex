defmodule DescuentoFabrica do
  def main do

      "ingrese la antigueadad en años "
      |> Util.ingresar_entero(:entero)
      |> descuento()
  end

  defp descuento(tiempo_antiguedad) when tiempo_antiguedad < 1, do: 0.0
  defp descuento(tiempo_antiguedad) when tiempo_antiguedad <= 2, do: 0.10
  defp descuento(tiempo_antiguedad) when tiempo_antiguedad <= 6, do: 0.14
  defp descuento(_), do: 0.0
end

IO.puts(DescuentoFabrica.main())
