import cosas.*

object camion {
	const property cosas = []
	const tara = 1000
	 
		
	method cargar(unaCosa) {cosas.add(unaCosa)}
	method descargar(unaCosa){	cosas.remove(unaCosa)
	}
	method pesoTotal(){return  tara + self.cargaTotal()}
	
	method cargaTotal(){ return cosas.sum({cosa => cosa.peso()})}
	
	method excedidoDePeso(){return self.pesoTotal() > 2500}
	
	method objetosPeligrosos(nivel){return cosas.filter({cosa =>cosa.nivelPeligrosidad()> nivel})}
	
	method objetosMasPeligrososQue(cosa){return self.objetosPeligrosos(cosa.nivelPeligrosidad())}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){return cosas.any({cosa => cosa.nivelPeligrosidad()
																> nivelMaximoPeligrosidad })}
}
