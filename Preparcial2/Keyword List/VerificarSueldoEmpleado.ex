# pregunta preparcial: en base a una lista de empleados con [nombre, cargo, salario]
# obtener nombre del empleado y verificar que su salario sea mayor a 3000

defmodule VerificarEmpleado do
  def main do
    empleado1 = [nombre: "johan", cargo: "ingeniero", salario: 3000]
    empleado2 = [nombre: "alejandro", cargo: "ingeniero", salario: 2999]

    consultar_nombre(empleado1)
    verificar_salario(empleado1)

    consultar_nombre(empleado2)
    verificar_salario(empleado2)
  end

  defp consultar_nombre(empleado) do
    Keyword.get(empleado, :nombre)
    |> IO.inspect(label: "el nombre del empleado es")
  end

  defp verificar_salario(empleado) do
    if Keyword.get(empleado, :salario) >= 3000 do
      true
    else
      false
    end
    |> IO.inspect(label: "el salario del empleado es mayor a 3000? ")
  end
end

VerificarEmpleado.main()
