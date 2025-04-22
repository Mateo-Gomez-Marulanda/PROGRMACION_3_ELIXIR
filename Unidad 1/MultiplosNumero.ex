# ejercicio para hallar si un numero es multiplo de otro 26/02/2025

defmodule MultiploNumero do
  def multiplo(a, b) do
    # desicion que verfica que el residuo es 0
    if rem(a, b) == 0 do
      IO.puts("son multiplos")
    else
      IO.puts("no son multiplos")
    end
  end
end

IO.puts(MultiploNumero.multiplo(8907678, 19943))
