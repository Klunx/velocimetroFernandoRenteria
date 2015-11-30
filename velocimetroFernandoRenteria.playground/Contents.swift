/**
 * Velocimetro.
 *
 * @author: Fernando Renteria
 * @version: 1.0.0
 */

/**
 * Enumeración de enteros con las distintas velocidades.
 */
enum Velocidades : Int {
    // Casos.
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    // Inicializador.
    init(velocidadInicial : Velocidades){
        // Inicializa al enumerador con la velocidad Inicial.
        self = velocidadInicial
    }
    
}

/**
 * Clase Auto.
 */
class Auto{
    
    // Instancia de la enumarción Velocidades.
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    // Inicializador de la clase.
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    /**
     * Función de cambio de velocidad que regresa una tupla con los valores de
     * actuales de la variable local: velocidad.
     */
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        
        // Reglas de cambio de velocidad.
        switch self.velocidad.rawValue{
            case 0:
                self.velocidad = Velocidades.VelocidadBaja
                break;
            case 20:
                self.velocidad = Velocidades.VelocidadMedia
                break;
            case 50:
                self.velocidad = Velocidades.VelocidadAlta
            break;
            case 120:
                self.velocidad = Velocidades.Apagado
                break;
            default:
                self.velocidad = Velocidades.Apagado
                break;
        }
        // Tupla de regreso.
        return (self.velocidad.rawValue, String(self.velocidad))
    }
    
}

// Instancia de la clase auto.
var auto = Auto()

// 20 interaciones donde se llama la funcion cambioDeVelocidad.
for var i = 1; i <= 20 ; i++ {
    // Estado inicial.
    if i == 1 {
        print("(\(auto.velocidad.rawValue), \"\(auto.velocidad)\")")
    } else {
        print("\(auto.cambioDeVelocidad())")
    }
}
