# pregunta preparcial para convertir una tupla en una lista

defmodule Conversion do
  def main do
    IO.inspect(conversion_tupla({1, 2, 3, 4}))
  end

  defp conversion_tupla(tupla) do
    # con la funcion "Tuple.to_list()" se puede convertir una tupla en lista facilmente
    Tuple.to_list(tupla)
  end
end

Conversion.main()
