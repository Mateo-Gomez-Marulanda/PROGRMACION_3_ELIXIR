# ejercicio para asignar una descripcion segun la edad del usuario 03/03/20225

defmodule AsignacionEdad do
  def main do
    edad =
      "ingrese su edad actual: "
      |> Util.ingresar_entero(:entero)

    asignar_descripcion(edad)
  end

  defp asignar_descripcion(edad) do
    cond do
      edad <= 5 -> "infante"
      edad <= 10 -> "niñez"
      edad <= 18 -> "adolecencia"
      edad <= 30 -> "adulto"
      edad <= 45 -> "mediana edad"
      edad > 45 -> "adulto mayor"
    end
  end
end

IO.puts(AsignacionEdad.main())
