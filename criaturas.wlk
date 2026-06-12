import roles.*

class Criatura {
    const property poderMagico
    const astucia
    var rol
    method poderOfensivo() = poderMagico * 10 + rol.extraPoder()

    method cambioRolA(nuevoRol){
        rol = nuevoRol
    }

    method esAstuta()

    method esFormidable() = self.esAstuta() or self.esExtraordinaria()

    method esExtraordinaria() = rol.esExtraodinarioPara(self)

    method ritualCambio() {
        rol.cambio()
    }
}

class Hada inherits Criatura {
    var aguanteDeVuelo = 2     //km
    method mejoraDeVuelo(){
        aguanteDeVuelo = (aguanteDeVuelo + 2).min(25)
    }

    override method esAstuta() = astucia > 50
    override method esExtraordinaria(){
       // rol.esExtraordinarioPara(self) and aguanteDeVuelo > 10
    }
}

class Duende inherits Criatura {
  override method poderOfensivo(){
    return super() * 0.1
  }
  override method esAstuta() = false

}


class Mascota {
    var property edad = 11
    var property tieneCuernos = true
}