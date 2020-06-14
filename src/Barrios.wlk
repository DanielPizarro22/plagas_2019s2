import elementos.*

class Barrio {
	var property elementosDelBarrio = []
	
	method esCopado(){
		const elementosBuenos = elementosDelBarrio.filter({elem => elem.esBueno()})
		const elementosMalos = elementosDelBarrio.filter({elem => not elem.esBueno()})
		
	return elementosBuenos.size() > elementosMalos.size()
	}
}