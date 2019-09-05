object ludmila {
    method precioPorKilometro() {
		return 18
	}

}

object anaMaria {
var estable = true

	method precioPorKilometro() {
		if (estable) {
			return 30
		} else {
			return 25
		}
	}

	method esEstable() {
		return estable
	}

	method esEstable(afirmar) {
		estable = afirmar
	}
}

object teresa {
var valor = 22

	method precioPorKilometro() {
		return valor
	}

	method precioPorKilometro(valorNuevo) {
		valor = valorNuevo
	}
}
object melina {
    method precioPorKilometro(clienta) {
		return (clienta.precioPorKilometro() - 3)
	}
}
