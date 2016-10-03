//: Velocimetro tarea 2 victor omar lezama albor

import UIKit

enum Velocidades: Int {
    case Apagado = 0 //Velocidad 0 km por hora.
    case VelocidadBaja = 20 // Velocidad de 20km por hora.
    case VelocidadMedia = 50 // Velocidad de 50km por hora.
    case VelocidadAlta = 120 // Velocidad de 120km por hora.
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        switch velocidad {
            
        case .Apagado :
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
           }
        return (velocidad.rawValue, "Velocidad Media")
    }
}

var auto:Auto = Auto()

print("\(auto.velocidad.rawValue) km por hora = \(auto.velocidad)")

var resultado:(actual: Int, velocidadEnCadena: String)

for index in 1...20 {
    
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) km por hora = \(resultado.velocidadEnCadena)")
}