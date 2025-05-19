defmodule MatrizConcurrencia do
  def main() do
    matriz = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    diagonal_ingerior = sumar_diagonal_inferior(matriz)
    diagonal_superior = sumar_diagonal_superior(matriz)

    multiplicar_diagonales(diagonal_ingerior, diagonal_superior)
    |> IO.inspect(label: "Resultado")
  end

  defp sumar_diagonal_inferior(matriz, cant_filas, cant_columnas) do
   Enum.at(Enum.at(matriz), 0)

  end
end

MatrizConcurrencia.main()
#esa mierda no era un preparcial era un hpta proyecto final D:
