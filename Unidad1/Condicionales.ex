#ejemplo condicional 19/02/2025

#ejemplo if
edad = 10
if edad <= 18 do
  IO.puts("entra")
else
  IO.pust("no entra")
end
#ejemplo unless (es un opuesto al if, sirve tanto para false o nil)
admin = false

unless admin do
  IO.puts("no eres admin")
end

#cond (es un swicth)
lluvia = 40

mensaje = cond do
  lluvia == 0 -> "no ha llovido"
  lluvia <= 50 -> "ha llovido un corto tiempo"
  lluvia <= 50 -> "ha llovido un rato"
  lluvia >= 100 -> "ha llovido mucho"
  true #se coloca true en caso de que unas de las desiciones falle
end
IO.puts(mensaje)
