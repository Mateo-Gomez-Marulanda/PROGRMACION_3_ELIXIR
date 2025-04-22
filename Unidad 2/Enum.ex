defmodule Enumeradores do
  def main do
    # todos cumplen la condicion?
    # Enum.all?([2,3,4],fn x -> rem(x/2) end)
  end


    def contar(0), do: IO.puts("acabe")
    def contar(n) do
      IO.puts(n)
      contar(n - 1)
    end
end

Enumeradores.contar(10)
