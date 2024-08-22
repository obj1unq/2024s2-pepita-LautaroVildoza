object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon{
	var energia = 30

	method energia() {
	  return energia
	}

	method comer(comida) {
	  energia = energia + comida.energiaQueAporta() / 2
	}

	method volar(distancia) {
	  energia = energia - 20 - 2*distancia
	}

}

object roque{
  	const ave = pepita
	var vecesQueDioDeComer = 0

  	method aveDeRoque() {
		return ave
  }

  	method alimentar(comida) {
		vecesQueDioDeComer = vecesQueDioDeComer + 1
	  	ave.comer(comida)
	}

	method cenas() {
	  return vecesQueDioDeComer
	}
}