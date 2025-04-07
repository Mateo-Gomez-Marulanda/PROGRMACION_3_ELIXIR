#ejemplo de funcion filter y reduce

defmodule NumerosPares do
  def main do
    numeros =
      [1, 2, 3, 4, 5, 6, 7, 8, 9]
      |> verificar_numero_par()
      |> sumar_numeros_par()
  end

  # funcion filter para entregar los datos de una lista que cumplan con la condicion
  defp verificar_numero_par(numeros) do
    Enum.filter(numeros, fn x -> rem(x, 2) == 0 end)
  end

  # funcion reduce para agrupar los datos de una lista
  defp sumar_numeros_par(numeros) do
    # numeros = lista ingresada
    # 0 valor de incio de la suma
    # acc variable acumuladora
    # x representa los valores de la lista
    Enum.reduce(numeros, 0, fn acc, x -> acc + x end)
  end
end

IO.inspect(NumerosPares.main())
