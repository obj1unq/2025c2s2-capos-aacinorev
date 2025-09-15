object rolando {
    const mochila = []
    const historial = []
    var property tamañoMochila = 2
    var property hogarActual = castilloDePiedra
    const poderBase = 5

    method poderBase(){
        return poderBase
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

    method utilizar(artefacto){

    }
}

object castilloDePiedra {
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
    var fueUtilizada = false

    method fueUtilizada(){
        return fueUtilizada
    }

    method poderQueAporta(personaje){
        if (!self.fueUtilizada()){
            fueUtilizada = true
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
    
}

object armaduraDeAceroValyrio{

}