import cosas.*

object camion {
	const property cosas = []
	const tara = 1000
	 
		
	method cargar(unaCosa) {cosas.add(unaCosa)
							unaCosa.seCarga()
	}
	method descargar(unaCosa){	cosas.remove(unaCosa)
	}
	method pesoTotal(){return  tara + self.cargaTotal()}
	
	method cargaTotal(){ return cosas.sum({cosa => cosa.peso()})}
	
	method excedidoDePeso(){return self.pesoTotal() > 2500}
	
	method objetosPeligrosos(nivel){return cosas.filter({cosa =>cosa.nivelPeligrosidad()> nivel})}
	
	method objetosMasPeligrososQue(cosa){return self.objetosPeligrosos(cosa.nivelPeligrosidad())}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){return cosas.any({cosa => cosa.nivelPeligrosidad()
																> nivelMaximoPeligrosidad })}
	
	///////////// Agregados al camión /////////////
																
	method tieneAlgoQuePesaEntre(min,max){return cosas.any({cosa =>cosa.peso().between(min,max)})}
	
	method cosaMasPesada(){
		return cosas.sortedBy({ a, b => a.peso() > b.peso() }).first()
	}
	
	method totalBultos() = cosas.sum({cosa => cosa.bulto()})
	
	method pesos() = cosas.map({cosa => cosa.peso()})														
}




