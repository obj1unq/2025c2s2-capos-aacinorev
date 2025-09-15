object rolando {
    const mochila = #{}
    var property tamañoMochila = 2
    
    method recolectarArtefacto(artefacto){
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
}

object espadaDelDestino{

}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraDeAceroValyrio{

}