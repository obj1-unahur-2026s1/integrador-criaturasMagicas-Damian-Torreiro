import criaturas.*
object guardian {
    method extraPoder() = 100
    method esExtraordinarioPara(criatura) = criatura.poderMagico() > 50
    method cambio(criatura) {
        criatura.cambioRolA(domadorNovato)
    }
}

class Domador {
    const mascotas = []

    method extraPoder() = 150 * self.cantidadDeMascotasConCuernos()

    method cantidadDeMascotasConCuernos() = (mascotas.filter({m => m.tieneCuernos()})).size()

    method esExtraordinarioPara(criatura) = criatura.poderMagico() >= 15 and self.todasLasMascotasSonVeteranas()

    method todasLasMascotasSonVeteranas() = mascotas.all({m => m.sonVeteranas()})

    method domesticarMascota(mascota) = mascotas.add(mascota)

}

object hechicero {
  method extraPoder() = 0

  method esExtraordinarioPara(criatura) = true

  method cambio(criatura){
    criatura.cambioRolA(guardian)
  }
}

const domadorNovato = new Domador(mascotas = [new Mascota(edad = 1, tieneCuernos = false)])

