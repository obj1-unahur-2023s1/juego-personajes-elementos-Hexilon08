import armas.*
import elementos.*

object floki {
	var arma = jabalina
	
	method cambiarArma(unArma){
		arma = unArma
	}
	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElemento
	
	method encontrar(elemento) {
		valorRecolectado += elemento.otorgaValor()
		elemento.recibirTrabajo()
		ultimoElemento = elemento
	}
	method ultimoElemento() = ultimoElemento
	method valorRecolectado() = valorRecolectado
	method estaFeliz() = valorRecolectado >=50 || ultimoElemento >= 10
}