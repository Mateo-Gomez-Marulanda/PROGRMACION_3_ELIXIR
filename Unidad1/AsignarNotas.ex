# programa que le asigne una nota en letras segun su calificacion numerica

defmodule NotaNumerica do
  def main do
    "ingrese la calificacion numerica del estudiante: "
    |> Util.ingresar_entero(:entero)
    |> asignar_calificacion_letra()
    |> Util.mostrar_mensaje()
  end

  defp asignar_calificacion_letra(calificacion) do
    case calificacion do
      # cuando x siendo x = califiacion, esté en los rangos establecidos (in) se imprimira su respectivo mensaje
      x when x < 0 or x > 100 -> "ingrese un valor en el rango establecido"
      x when x in 0..59 -> "su calificacion es F"
      x when x in 60..69 -> "su calificacion es D"
      x when x in 70..79 -> "su calificacion es C"
      x when x in 80..89 -> "su calificacion es B"
      x when x in 90..100 -> "su calificacion es A"
    end
  end
end

NotaNumerica.main()
