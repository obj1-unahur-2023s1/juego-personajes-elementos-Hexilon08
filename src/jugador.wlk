import personajes.*
import elementos.*

object luisa {
	var property personajeActivo = mario
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}
