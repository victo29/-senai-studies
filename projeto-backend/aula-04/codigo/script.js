
// Moldes para objetos

let cachorro = {
    raca: 'SRD',
}

let pastorAlemao = Object.create(cachorro); // Herda os atributos e métodos

pastorAlemao.raca = 'Pastor Alemão';

console.log(pastorAlemao.raca);

// Construtor na Class

class Cachorro{
    constructor(raca,patas,cor){
        this.raca = raca;
        this.patas = patas;
        this.cor = cor;
    }

    get getRaca(){
        return this.raca;
    }

    set setRaca(raca){
        this.raca = raca;
    }
}

let labrador = new Cachorro('Labrador',4,'Marrom');

console.log(labrador);
console.log(labrador.getRaca);

// Herança
class Mamifero{
    constructor(patas){
        this.patas = patas;
    }
}

class Gato extends Mamifero {
    constructor(patas, raca){
        super(patas);
        this.raca = raca;
    }

    miar(){
        console.log('ELA FLEXIONA A ....')
    }
}


let Tom = new Gato(4, "Gato do flexiona");

console.log(Tom);
Tom.miar();