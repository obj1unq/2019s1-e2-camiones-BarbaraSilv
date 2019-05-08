object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos{
	var property cantidadLadrillo = 0
	
	method peso(){ return self.pesoLadrillo() * cantidadLadrillo}
	
	method pesoLadrillo(){return 2}
	method nivelPeligrosidad(){return 2}

}
 object arenaAGranel{
 	var property peso = null
  	method nivelPeligrosidad(){ return  1}
  }
  
  
  object bateriaAntiaerea{
  	var property misiles = false 
  	method peso(){return if (misiles) {300} else 200}
  	method nivelPeligrosidad(){return if (misiles){ 100 } else 0 }
  	 
  }
  
  
  