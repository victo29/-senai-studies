let cachorro = {
    raca: "Sem raça",
    latir: function(){  // Métodos
        console.log("Au Au");
    },

    rosnar: () =>{
        console.log("GRRRRRRRRR")
    },

    SetRaca: (raca) =>{  // Método Set para definir valores 
        this.raca = raca;
    }, 

    getRaca: () =>{
        return "A  raça é: " + this.raca; // Método Get para acessar valores
    }


}

cachorro.latir();
cachorro.rosnar();
cachorro.SetRaca("Pinscher");
console.log(cachorro.getRaca());


// GET e SET

// let pessoa = {
//     nome: " ",
//     setNome: (novoNome) =>{
//         this.nome = novoNome;
//     },
//     getNome: () => {
//         return this.nome;
//     }
// }

// pessoa.setNome("Victor");
// console.log(pessoa.getNome());

// PROTOTYPES

let pessoa = {
    maos: 2
}

console.log(Object.getPrototypeOf(pessoa));
console.log(Object.getPrototypeOf(pessoa) == Object.prototype);


// Classes
let passaro = {
    nome: "SND",
    cantar: () =>{
        console.log("PIIIIIU PIUUUUU PIUUUUUUU");
    }
}


let beijaFlor = Object.create(passaro);

beijaFlor.nome = "beija-flor";
console.log(beijaFlor.nome);
beijaFlor.cantar();


// Classes: Construtor por função

function criaCachorro(raca, cor, dono) {
    let cachorro = Object.create({});
    cachorro.raca = raca;
    cachorro.cor = cor;
    cachorro.dono = dono;
    cachorro.latir = () =>{
        console.log("Au Au Au")
    }
    return cachorro;
}

let doberman = criaCachorro('Doberman',"preto", "Victor");
doberman.latir()
console.log(doberman);


// Classes: Construtor por new

function Cachorro(raca,cor,dono) {
    this.raca = raca;
    this.cor = cor;
    this.dono = dono;
    this.latir = () =>{
        console.log("Au Au Au")
    }
}

let husky = new Cachorro("Husky", "Branco Gelo", "Iasmin");
console.log(husky);
