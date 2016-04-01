var rangoNumeros = 0...100

var mensaje = ""

for s in rangoNumeros {
    if (s % 5) == 0{
        mensaje = " Bingo!!"
    }
    if (s % 2) == 0 {
        mensaje = mensaje + " Par!!"
    } else if (s % 2) != 0 {
        mensaje = mensaje + " Impar!!!"
    }
    if s >= 30 && s <= 40 {
        mensaje = mensaje + " Viva Swift!!!"
    }
    print("\(s) \(mensaje)")
    mensaje =  ""
}