# ejercicio 5 preparcial 1 salario total de un empleado con horas extra
defmodule SalarioTotal do
  def main do
    nombre_usuario =
      "Ingrese su nombre: "
      |> Util.ingresar_texto(:texto)

    salario_base =
      "Ingrese su salario base: "
      |> Util.ingresar_real(:real)

    horas_extra =
      "Ingrese el numero de horas extra: "
      |> Util.ingresar_entero(:entero)

    calcular_salario_total(salario_base, horas_extra)
    |> generar_mensaje(nombre_usuario)
    |> Util.mostrar_mensaje()
  end

  defp calcular_salario_total(salario_base, horas_extra) do
    salario_base+((salario_base/46)*horas_extra*1.5)
  end

  defp generar_mensaje(salario_total, nombre_usuario) do
    "Señor/a #{nombre_usuario} su salario total es: #{salario_total}"
  end
end

SalarioTotal.main()
