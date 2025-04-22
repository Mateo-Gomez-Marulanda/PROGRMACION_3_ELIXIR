# ejercicio para validar el acceso de un usuario siempre y cuando su registro sea valido 030/03/2025

defmodule RegistroBiometrico do
  def main do
    registro_biometrico = false
    validar_registro(registro_biometrico)
  end

  defp validar_registro(registro_biometrico) do
   unless registro_biometrico do
    IO.puts("registro no valido")
   end
  end
end

IO.puts(RegistroBiometrico.main())
