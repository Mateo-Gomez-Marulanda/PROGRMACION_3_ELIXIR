# ejemplo sudoku backtranking
defmodule Sudoku do

  def resolver_sudoku(tablero) do
    case buscar_espacio_vacio(tablero) do
      nil ->
        # si ya no hay 0 en el tablero termina la ejecucion y devuelve le resultado
        tablero

      {fila, columna} ->
        # busca un valor valido para agregar en una posicion
        Enum.find_value(1..9, fn numero ->
          # llama la funcion "es_valido?" para verificar si se puede colocar el valor
          if es_valido?(tablero, fila, columna, numero) do
            # mediante el la funcion "colocar_numero" se reempraza la posicion seleccionada con el nuervo numero
            nuevo_tablero = colocar_numero(tablero, fila, columna, numero)
            resultado = resolver_sudoku(nuevo_tablero)


            # verifica si el sudoku esta completo con la funcion "sudoku_completo?" buscando algun 0 en la matriz
            if sudoku_completo?(resultado), do: resultado, else: nil
          end
        end) || tablero
    end
  end

  defp buscar_espacio_vacio(tablero) do
    # genera todas las posiciones de las filas en un rango de 0-8
    0..8
    |> Enum.flat_map(fn fila ->
      # generea todas las posiciones de las columnas en un rango de 0-8
      # genera las ubicaciones de los numeros en la matriz
      0..8
      |> Enum.map(fn columna -> {fila, columna} end)
    end)
    # en base a la posicion en la matriz busca los que sean 0 mediante "posicion_sudoku"
    |> Enum.find(fn {fila, columna} -> posicion_sudoku(tablero, fila, columna) == 0 end)
  end

  defp es_valido?(tablero, fila, columna, numero) do
    # busca en toda la fila si "numero" se repite
    # busca en toda la columna si "numero" se repite"
    # busca si en una casilla de la submatriz se encuentra "numero"
    not Enum.member?(fila(tablero, fila), numero) and
      not Enum.member?(columna(tablero, columna), numero) and
      not Enum.member?(caja(tablero, fila, columna), numero)
  end

  # busca en todo el tablero de sudoku si hay alguna casilla en 0
  defp sudoku_completo?(tablero), do: not Enum.any?(tablero, fn x -> Enum.member?(x, 0) end)

  # busca un posicion en el sudoku
  defp posicion_sudoku(tablero, fila, columna), do: Enum.at(Enum.at(tablero, fila), columna)

  # busca un posicion en la matriz y la reemplaza por "numero"
  defp colocar_numero(tablero, fila, columna, numero) do
    List.update_at(tablero, fila, fn x -> List.update_at(x, columna, fn _ -> numero end) end)
  end

  # funciones de apoyo para que la funcion "es_valido?" pueda verificar correctamente las reglas de sudoku

  # retorna una fila del tablero
  defp fila(tablero, fila), do: Enum.at(tablero, fila)

  # retorna una columna del tablero
  defp columna(tablero, columna), do: Enum.map(tablero, fn fila -> Enum.at(fila, columna) end)

  # retorna un posicion de la submatriz "caja" del tablero
  defp caja(tablero, fila, columna) do
    inicio_fila = div(fila, 3) * 3
    inicio_columna = div(columna, 3) * 3

    for f <- inicio_fila..(inicio_fila + 2),
        c <- inicio_columna..(inicio_columna + 2),
        do: posicion_sudoku(tablero, f, c)
  end
end

sudoku = [
  [5, 3, 0, 0, 7, 0, 0, 0, 0],
  [6, 0, 0, 1, 9, 5, 0, 0, 0],
  [0, 9, 8, 0, 0, 0, 0, 6, 0],
  [8, 0, 0, 0, 6, 0, 0, 0, 3],
  [4, 0, 0, 8, 0, 3, 0, 0, 1],
  [7, 0, 0, 0, 2, 0, 0, 0, 6],
  [0, 6, 0, 0, 0, 0, 2, 8, 0],
  [0, 0, 0, 4, 1, 9, 0, 0, 5],
  [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

sudoku_resuelto = Sudoku.resolver_sudoku(sudoku)

# Imprimir sudoku resuelto
Enum.each(sudoku_resuelto, fn fila ->
  fila
  |> Enum.map(&Integer.to_string/1)
  |> Enum.join(" ")
  |> IO.puts()
end)
