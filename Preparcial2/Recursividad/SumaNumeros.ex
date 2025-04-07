# pregunta preparcial: sumar numeros de 1 hasta n

defmodule Suma do
  def main do
    IO.puts(suma_n(3))
  end

  defp suma_n(1), do: 1
  defp suma_n(n) when n > 1, do: n + suma_n(n - 1)
end

Suma.main()
