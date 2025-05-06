import trabajadores.*
object dragon {
  var temperatura = 200

  method tipoDeActividad() = "diurna"
  method edad()=90

  method alimentar(){
    temperatura += 20
  }

  method entrenar(){
    temperatura -= 40
  }

  method esJoven() = (self.edad()<=100)

  method dormir() {
    temperatura = 200
  }
 
}
object unicornio {
  var mp = 3
  var esFeliz = false
  method tipoDeActividad() = "diurna"

  method edad()=30

  method alimentar(){
    mp+=1
  }
  method puedeEntrenar() = mp>5

  method entrenar(){
    if(self.puedeEntrenar())esFeliz=true 
  }

  method esJoven() = (self.edad()< 50)

  method dormir() {
    esFeliz = !esFeliz
  }
 
}
object sirena {
  var ha = 40
  var esFeliz = false
  method tipoDeActividad() = "nocturna"

  method puedeEntrenarsePor(unEntrenador){

  }

  method edad()=60

  method alimentar(){
    ha=ha*1.5 
  }

  method nada(unaDistancia){
    ha = 0.max(ha-unaDistancia)
  }

  method puedeEntrenar() = ha>0

  method entrenar(){
    if(self.puedeEntrenar()){
    self.nada(ha/2)
    self.practicaParaBatallas()
    }
  }

  method practicaParaBatallas() {
    ha -=20
  }

  method esJoven() = (self.edad()< 45)

  method dormir() {
    ha = 40
  }
}

object fenix{
  var edad = 180
  var energia = 0
  var pelajeReluciente=false

  method tipoDeActividad() = "diurno y nocturno"

  method puedeEntrenarsePor(unEntrenador){

  }
  method energia(){
    if(pelajeReluciente){
      energia=edad
    }else{
      energia=edad/2
    }
    return energia
  }
  method edad()=edad

  method esPichon() = edad<5

  method alimentar(){
    if(self.esPichon()){
      edad+=1
    }else{
      pelajeReluciente=true
    }
  }

  method puedeEntrenar() = !self.esPichon()

  method entrenar(){
    if(self.puedeEntrenar()){
      edad = edad * 1.1
      pelajeReluciente = false
    }
  }

  method esJoven() = (self.edad()< 150)

  method dormir() {
    pelajeReluciente = false
    if(self.edad()>200){
      edad=1
    }
  }
}

object gargola{
  var edad = 15
  var forma = "estatua"

  method forma() = forma

  method edad() = edad

  method tipoDeActividad() = "nocturna"

  method alimentar() {}

  method puedeEntrenar() = self.edad()>0

  method entrenar() {
    edad = 1.max(edad-1) 
    forma="estatua"
  }

  method cambiarForma(){
    forma = !forma
  }

  method puedeSerCuidado() = self.forma() == "viva"
}