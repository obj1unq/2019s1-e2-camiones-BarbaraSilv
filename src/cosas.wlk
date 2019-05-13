object knightRider {
	var property bulto = 1
	var property seCarga = null
	
	
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	
}
/////////////////////////////////////////////////////////////
object bumblebee {
	var property bulto = 2 
	var property transformadoEnAuto = false
	var property seCarga = self.transformadoEnAuto(true) 
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	
}
/////////////////////////////////////////////////////////////
object paqueteDeLadrillos{
	var property cantidadLadrillo = 0
	var property bulto =  if (self.cantidadLadrillo().between(1,100)) {1}
							else if (self.cantidadLadrillo().between(101,300)){2}
						else if (self.cantidadLadrillo().between(301,1000)) {3} else 0
							
	var property seCarga = self.cantidadLadrillo(12)
	method peso(){ return self.pesoLadrillo() * self.cantidadLadrillo()}
	 
	method pesoLadrillo(){return 2}
	method nivelPeligrosidad(){return 2}

}
//////////////////////////////////////////////////////////////////////////////
 object arenaAGranel{
 	var property bulto = 1
 	var property peso = 0
 	var property seCarga = self.peso(20)
  	method nivelPeligrosidad(){ return  1}
  }
  
//////////////////////////////////////////////////////////////////  
  object bateriaAntiaerea{
  	var property misiles = false 
  	var property bulto = if (self.misiles()){2} else 1
  	var property seCarga = self.misiles(true)
  	method peso(){return if (self.misiles()) {300} else 200}
  	method nivelPeligrosidad(){return if (self.misiles()){ 100 } else 0 }
  	 
  }
  
  //////////////////////////////////////////////////////////////////
  object contenedorPortuario{
  	var property cosas = []
  	var property bulto = 1 + cosas.sum({cosa => cosa.bulto()})
  	var property seCarga = cosas.forEach { cosa => cosa.seCarga() }
  	
  	
  	method peso(){ return 100 + self.pesoDeCosas()}
	method pesoDeCosas() = cosas.sum({cosa => cosa.peso()}) 
	method nivelPeligrosidad(){if (cosas == []){0} else self.nivelDeCosas().max()}
	
	method nivelDeCosas() = cosas.map({cosa => cosa.nivelPeligrosidad()})
}
  
 //////////////////////////////////////////////////////////////////////
   object reciduosRadiactivos {
   	var property bulto = 1
   	var property peso = null
   	var property seCarga =  self.peso(15)
   			method nivelPeligrosidad(){return 200}
   }
  /////////////////////////////////////////////////////////////////////
 	object embalajeDeSeguridad{
 		var property bulto = 2
 		var property cosaEnvuelta = null
 		var property seCarga = null
 			method peso(){return cosaEnvuelta.peso()}
 			method nivelPeligrosidad(){return cosaEnvuelta.nivelPeligrosidad()}
 	
 	}
 	
 	
 	
 	
  