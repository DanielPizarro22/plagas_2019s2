import Plagas.*

class Hogar{
	var property nivelDeMugre
	var property confort
	
	method esBueno(){
		return confort / 2 >= nivelDeMugre
	}
	
	method recibirAtaqueDe(unaPlaga){
		unaPlaga.atacarA(self)
		nivelDeMugre += unaPlaga.nivelDeDanio()
	}
}
		
class Huerta {
	var property capacidadDeProduccion
	var property nivel = 0
	
	method esBueno(){
		return capacidadDeProduccion > nivel
	}
	
	method recibirAtaqueDe(unaPlaga){
		unaPlaga.atacarA(self)
		if(unaPlaga.trasmiteEnfermedad()){
			  capacidadDeProduccion =  capacidadDeProduccion -  10 - unaPlaga.nivelDeDanio() * 0.10 
			  }
		else{
			capacidadDeProduccion -=  unaPlaga.nivelDeDanio() * 0.10
			}
	}
}

class Mascota{
	var property nivelDeSalud
	
	method esBueno(){
		return nivelDeSalud > 250
	}
	
	method recibirAtaqueDe(unaPlaga){
		unaPlaga.atacarA(self)
		if(unaPlaga.trasmiteEnfermedad()){
			nivelDeSalud -= unaPlaga.nivelDeDanio()
		}
		else{
			nivelDeSalud = self.nivelDeSalud()
		}
	}
}

