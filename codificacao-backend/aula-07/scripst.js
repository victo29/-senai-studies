// Criando Array
let arr = [1,2,3,4,5,6];
let misturado = ["Victor","Iasmin", 1,2,3];

console.log(arr,misturado);
console.log(arr[1]);
console.log(misturado[1]);
console.log(arr[arr.length-1]);

// Transformando string em maiúsculas
let marca = "Nike";

console.log(marca.toUpperCase());

// Criando objetos
let pessoa = {
    nome: "Victor",
    profissao: "Desenvolvedor Back-End",
    idade: 17
};

console.log(pessoa.nome, pessoa.profissao, pessoa.idade);
console.log(pessoa);

// Funções em objetos
let cachorro = {
    patas: 4,
    nome: "Bob",
    latir: function(){
        console.log("Au Au")
    }
};

cachorro.latir();

delete cachorro.patas;

// Herança
cachorro.dono = 'Victor';

console.log(cachorro);

let cachorro_novo= {
    castrado: true
};

Object.assign(cachorro_novo, cachorro);

console.log(cachorro_novo);

// Mutação
let cachorro_mutacao = cachorro;
cachorro_mutacao.nome = "Lulu";
console.log(cachorro.nome);

// loop em arrays
console.log('---------------------------');
for(let i = 0; i< misturado.length; i++){
    console.log(misturado[i]);
}

console.log('---------------------------');

// Adicionando e removendo delemento do array
arr.push(30);
console.log(arr);
arr.pop();
arr.push(10,89);
console.log(arr)
console.log('---------------------------');

// removendo e adicionando primeiros elementos do array

carros = ["Mercedes", "BMW", "Fiat", "Ford"];
console.log(carros)
let carroRemovido = carros.shift();
carros.unshift("Corola")
carros.push("BMW")
console.log(carros);
console.log(carroRemovido);


console.log('---------------------------');

// Encontrar index de um elemento

console.log(carros.indexOf("BMW"));
console.log(carros.lastIndexOf("BMW"));

console.log('---------------------------');

// forEach
const nums = [1,2,3,4,5,6];
nums.forEach(num=>{
    console.log("O número é: " + num)
});

console.log('---------------------------');

// Varificar se um elemento está presente no array

console.log(carros.includes("Fiat"));

console.log('---------------------------');

// Invertendo Array

console.log("Invertendo array: " + carros.reverse())

console.log('---------------------------');

// Dividindo frase em array

let frase = "Bom dia habitantes do Brasil";
let palavras = frase.split(" ")
console.log(palavras)

console.log('---------------------------');


//  Unindo o Array
let fraseMontada = palavras.join(' ');
console.log(fraseMontada);

console.log('---------------------------');

// Método repeat
let f = "Oi Mundo";
console.log(f.repeat(2));

console.log('---------------------------');

// Rest operator
// Faz com que uma fumção receba argumentos indefinidos
// Transforma os parâmetros em um array

function imprimirNumeros(...args){
    for(let i = 0; i < args.length; i++){
        console.log(args[i]);
    };
};

imprimirNumeros(1,2,3,4,5,6,7,8,9,10);
console.log('pausa');
imprimirNumeros(1,2);

console.log('---------------------------');

// Criando variáveis apartir dos objetos

let obj ={
    rodas:4,
    portas:4
}

let array = ["Banana", "Maçã"];
let [banana, maca] = array;

let {rodas: rodas1, portas: portas1} = obj;

console.log(rodas1, portas1);
console.log(banana,maca)

