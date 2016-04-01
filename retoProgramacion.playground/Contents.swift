var rangoNumeros = 0...100

for s in rangoNumeros {
    if s >= 30 && s <= 40 {
        print("\(s) Viva Swift!")
    } else if (s % 5) == 0{
        print("\(s) Bingo!")
    } else if (s % 2) == 0 {
        print("\(s) Par!")
    } else if (s % 2) != 0 {
        print("\(s) Impar!")
    }
}