//Velocimetro

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}


class  Auto {
    var velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    var velocidadCadena : String = "Apagado"
    
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual = velocidad
        
        let resultado = (velocidadActual.rawValue, velocidadCadena)
        
        
        switch velocidadActual{
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadCadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadCadena = "Velocidad Media"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadCadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadCadena = "Velocidad Media"
        default:
            velocidad = Velocidades.Apagado
            velocidadCadena = "Apagado"
        }
        return resultado
    }
    
}

var auto = Auto(velocidad: Velocidades.Apagado)

for var i = 0; i < 20; i++ {
    print(auto.cambioDeVelocidad())
}

