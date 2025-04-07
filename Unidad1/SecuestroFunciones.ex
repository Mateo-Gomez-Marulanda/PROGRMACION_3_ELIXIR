# ejemplo para llamar funciones propias de Elixir - 19/02/2025

defmodule Calculo do
  def residuo(func) do
    func.(4, 2)
  end
end

# función propia rem/2 representa el residuo
IO.puts(Calculo.residuo(&rem/2))
