import Clientas.*
import remiseras.*

object oficina {
	var remiseraUno
	var remiseraDos

	method asignarRemiseras(remisera1, remisera2) {
		remiseraUno = remisera1
		remiseraDos = remisera2
	}

	method cambiarPrimerRemiserarPor(remisera) {
		remiseraUno = remisera
	}

	method cambiarSegundoRemiseraPor(remisera) {
		remiseraDos = remisera
	}

	method intercambiarRemiseras() {
		var remiseraCambiar = remiseraUno
		remiseraUno = remiseraDos
		remiseraDos = remiseraCambiar
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		var condicion = remiseraDos.precioViaje(cliente, kms) < remiseraUno.precioViaje(cliente, kms)
		var condicion1 = (remiseraDos.precioViaje(cliente, kms) - remiseraUno.precioViaje(cliente, kms))>30
		return if (condicion and condicion1) {
			    remiseraDos
		         } else {
			    remiseraUno
		}
	}

}

