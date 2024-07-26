// Exercício 01

let frutas = ["Banana", "Maçã", "Uva", "Limão", "Laranja"];

console.log(frutas[1]);
console.log(frutas[3]);
console.log(frutas[4]);

console.log('--------------------');

// Exercício 02

let arrayDeDois = [1,2];
let arrayDeQuatro = [3,4,5,6];

console.log(arrayDeDois.length);
console.log(arrayDeQuatro.length)

console.log('--------------------');

// Exercício 03

let onibus = {
    rodas: 8,
    limitePassageiros: 40,
    portas: 2
}

console.log(onibus["rodas"]);
console.log(onibus["limitePassageiros"]);
console.log(onibus["portas"]);

console.log('--------------------');

// Exercício 04

onibus["janelas"] = 20;
delete onibus["rodas"];
console.log(onibus["janelas"]);
console.log(onibus)

console.log('--------------------');

// Exercício 05

let cincoNomes = ["Iasmin", "Victor", "Nelson","Antônio", "Marina"
];

if(cincoNomes.includes("Victor")){
    console.log("O seu nome está na lista")
}

console.log('--------------------');

// Exercício 06

let maisDeCinco = [1,2,3,4,5,6];
let menosDeCinco = [1,2,3,4];

const verificaElementos = (array) =>{

    if(array.length >=5){
        console.log("Muitos elementos");
    }else{
        console.log("Poucos elementos");
    };
}

verificaElementos(maisDeCinco);
verificaElementos(menosDeCinco);

console.log('--------------------');

// Exercício 07

for(let i = 0; i < frutas.length; i++){
    console.log(frutas[i]);
}

console.log('--------------------');

// Exercícios 08

let json = {
    "nome":"Victor",
    "idade":17,
    "altura":"1.85"
}


console.log(json["nome"]);
console.log(json["idade"]);
console.log(json["altura"]);

console.log('--------------------');

// Exercícios 09

let frase = "O rato roeu a roupa do rei de roma";
let arrayFrase = frase.split(" ");
console.log(arrayFrase);


console.log('--------------------');


// Exercícios 10

let calculadora = {
    somar: (x,y) => {
        return x+y
    },
    subtrair: (x,y) => {
        return x-y
    },
    multiplicar: (x,y) =>{
        return x*y
    },
    dividir: (x,y)=>{
        return x/y
    }
}

console.log(calculadora.somar(1,2));
console.log(calculadora.subtrair(10,2));
console.log(calculadora.dividir(10,5));
console.log(calculadora.multiplicar(10,2));
