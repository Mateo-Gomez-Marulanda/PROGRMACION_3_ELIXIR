defmodule PromocionFecha do
  @fechaPromocion 1971
  def main do
    "ingrese el numero de cedula"
    |> ingresar_entero(:entero)
    |> divisibles_entre_si(@fechaPromocion)
    |> generar_mensage()
    |> mostrar_mensaje()
  end

  def generar_mensage(hay_promocion) do
    if hay_promocion do
      "tiene promocion"
    else
      "no tiene promocion"
    end
  end

  def divisibles_entre_si(a, b) when rem(a, b) == 0 do
    true
  end

  def divisibles_entre_si(_, _) do
    false
  end
end

IO.puts(PromocionFecha.main())
