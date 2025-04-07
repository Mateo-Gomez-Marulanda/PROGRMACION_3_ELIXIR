# modulo para utilizar funciones clave en los programas

defmodule Util do
  def mostrar_mensaje(mensaje) do
    IO.puts("#{mensaje}")
  end

  def ingresar_texto(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar_entero(mensaje, :entero) do
    try do
      mensaje
      |> Util.ingresar_texto(:texto)
      |> String.to_integer()
    rescue
      ArgumentError ->
        "Error debe ingresar un numero entero/n"
        |> mostrar_error()

        mensaje
        |> ingresar_entero(:entero)
    end
  end

  def ingresar_real(mensaje, :real) do
    try do
      mensaje
      |> Util.ingresar_texto(:texto)
      |> String.to_float()
    rescue
      ArgumentError ->
        "Error, se espera que ingrese un número real\n"
        |> mostrar_error()

        mensaje
        |> ingresar_real(:real)
    end
  end

  def mostrar_error(mensaje) do
    IO.puts(:standard_error, mensaje)
  end
end
