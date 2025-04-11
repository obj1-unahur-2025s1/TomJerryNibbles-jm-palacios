object tom {
    var energia = 50
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distancia){
        energia = energia - distancia/2
    }
    method velocidadMax(){
        return energia * 0.1 + 5
    }
    method energia(){
        return energia
    }
    method puedeCazar(unaDistancia){
        return unaDistancia /2 < energia
    }
    method cazarSiPuede(unRaton, unaDistancia){
        if(self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }

}

object jerry {
    var edad = 2
    method peso(){
        return edad * 20    
    }
    method cumplirAnios(){  //se llamar setear este metodo
        edad += 1
    }  
    method edad(){
        return edad
    }
}

object nibbles {
    method peso(){
        return 35
    }  
}

 