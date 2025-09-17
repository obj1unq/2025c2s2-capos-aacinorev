object rolando {
    const mochila = []
    const historial = []
    var property tamañoMochila = 2
    var property hogarActual = castilloDePiedra
    var poderBase = 5

    method poderBase(){
        return poderBase
    }

    method poderDePelea(){
        return poderBase + mochila.sum{artefacto => artefacto.poderQueAporta(self)}
    }

    method batalla(){
        mochila.forEach({artefacto => artefacto.utilizar()})  /// Utiliza todos los artefaectos
        poderBase += 1
    }

    method recolectarArtefacto(artefacto){
        historial.add(artefacto)
        self.validarRecoleccion()
        mochila.add(artefacto)
    }

    method validarRecoleccion(){
        if (mochila.size() == tamañoMochila){
            self.error("No hay capacidad suficiente en la mochila para recolectar")
        }
    }

    method artefactosObtenidos(){
        return mochila
    }

    method historial(){
        return historial
    }

    method llegarAlCastillo(){
        hogarActual.guardarArtefactos(mochila)
        mochila.clear()
    }

    method todasLasPosesiones(){
        return hogarActual.agregarArtefactosDe(mochila)
    }

    method tieneEsteArtefacto(artefacto){
        return (self.todasLasPosesiones()).contains(artefacto)
    }

    /*method utilizar(artefacto){

    }*/
}

object castilloDePiedra{
    const artefactosAlmacenados = []

    method artefactosAlmacenados(){
        return artefactosAlmacenados
    }

    method guardarArtefactos(artefactos){
        artefactosAlmacenados.addAll(artefactos)
    }

    method agregarArtefactosDe(listaArtefactos){
        return artefactosAlmacenados + listaArtefactos
    }
}


object espadaDelDestino{
   var vecesUtilizado = 0

    method utilizar(){
        vecesUtilizado += 1
    }

    method poderQueAporta(personaje){
        if (vecesUtilizado == 0){
            return personaje.poderBase()
        }
        else{
            return personaje.poderBase() * 0.50
        }
    }
}

object libroDeHechizos{

}

object collarDivino{
    var vecesUtilizado = 0
    const poderBase = 3

    method utilizar(){
        vecesUtilizado += 1
    }
    
    method poderQueAporta(personaje){
        if(personaje.poderBase() <= 6){
            return poderBase
        }
        else{
            return poderBase + vecesUtilizado
        }
    }
}

object armaduraDeAceroValyrio{
    method poderQueAporta(personaje){
        return 6
    }
    
    method utilizar(){
    }
}