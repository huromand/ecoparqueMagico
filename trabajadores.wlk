import criaturitas.*

object rodrigo {
    var turno = "mañana"
    var tutor = null
    
  method turno() = turno
  method antiguedad() = 0
  method tutor() = tutor
  method asignarTutor(unTutor){
    tutor = unTutor 
  }

method puedeNadar(){
    self.tutor().puedeNadar()
}

method resisteAltasTemperaturas() = false

method cambiarTurno()
    {turno = !turno}
}
object laura {
    method turno() = "nocturno"
    method puedeNadar() = false
    method resisteAltasTemperaturas() = true
    method antiguedad() = 2
    method interactuaCon(unaCriaturita){
        
    }

}
object german {
    method turno() = "diurno"
    method puedeNadar() = true
    method resisteAltasTemperaturas() = true
    method antiguedad() = 15 
    method esnseñarA(unTrabajador){}
}
object jimena {
    var tieneTrajeIgnifugo = false
    method sePoneElTraje(){
        tieneTrajeIgnifugo=true
    }
    method turno() = "nocturno"
    method puedeNadar() = true
    method resisteAltasTemperaturas() = tieneTrajeIgnifugo
    method antiguedad() = 8
}