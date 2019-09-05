import Clientas.*

object roxana {
    method precioViaje(clienta, kms) {
		return (clienta.precioPorKilometro() * kms)
	}
}

object gabriela {
    method precioViaje(clienta, kms) {
		return ((clienta.precioPorKilometro() * kms) * 1.2)
	}

}

object mariela {
    method precioViaje(clienta, kms) {
		return 50.max(clienta.precioPorKilometro() * kms)
	}
}

object juana {
    method precioViaje(clienta, kms) {
		return if (kms < 9) {
			100
		} else {
			200
		}
	}

}

object lucia {
var reemplazo

	method reemplazarPor(remisera) {
		reemplazo = remisera
	}

	method precioViaje(clienta, kms) {
		return reemplazo.precioViaje(clienta, kms)
	}
}
