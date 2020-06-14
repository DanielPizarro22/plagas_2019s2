import elementos.*


class Plagas{
	var poblacion = 0
	method poblacion()= poblacion
	method trasmiteEnfermedad() { return poblacion > 10}
	method atacarA(unElemento){
		poblacion += poblacion * 0.10
	}

}
class PlagaDeCucarachas inherits Plagas{
	var property pesoPromedio
	
	override method poblacion()= self.poblacion()
	
	method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method atacarA(unElemento){
		pesoPromedio = pesoPromedio + 2 super(unElemento)
	}
	
	override method trasmiteEnfermedad(){
		return super() and self.pesoPromedio() >= 10
	}
	
}

class PlagaDeMosquitos inherits Plagas{
	
	override method poblacion()= poblacion

	method nivelDeDanio(){
		return poblacion
	}
	
	override method trasmiteEnfermedad(){
		return super() and  poblacion % 3 == 0 
	}
}

class PlagaDePulgas inherits Plagas{
	
	override method poblacion()= poblacion
	method nivelDeDanio(){
		return poblacion  * 2 
	}
}

class PlagaDeGarrapatas inherits Plagas{
	override method poblacion()= poblacion
	method nivelDeDanio(){
		return poblacion  * 2 
	}
	
	override method atacarA(unElemento){
		poblacion += poblacion * 0.20
	}
}