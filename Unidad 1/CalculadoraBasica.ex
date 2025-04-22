# Ejemplo calculadora basica 19/02/2025

defmodule Calculadora do
  # funcion para sumar dos numeros
  def suma(a, b) do
    a + b
  end

  # funcion para resstar dos numeros
  def resta(a, b) do
    a - b
  end

  # funcion para multiplicar dos numeros
  def multiplicacion(a, b) do
    a * b
  end

  # guarda para divicion sobre 0
  def division(a, b) when b == 0 do
    :inf
  end

  # funcion para divir dos numeros
  def division(a, b) do
    a / b
  end
end

# imprimir el resultado de las operaciones
IO.puts(Calculadora.suma(6, 5))
IO.puts(Calculadora.division(4,0))
