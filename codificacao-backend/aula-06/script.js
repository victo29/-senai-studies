// exercício 12

let n = 0;
while(n <=10){
    console.log(n);
    n++;
};

console.log("-------------------\n\n");

// exercício 13

for(let i = 100; i >= 50; i--){
    console.log(i)
}

console.log("-------------------\n\n");

// exercício 14
for(let z = 0; z <= 50; z++){
    if(z % 2 == 0){
        console.log("O número " + z +" é par")
    }else{
        console.log("O número " + z +" é impar")
    };
};

console.log("-------------------\n\n");

// exercício 15
let numero = 3;
let divisores = 0;
for(let contador = 1; contador <= numero; contador++){
    if(numero % contador == 0){
        divisores++;
    };
};

if (divisores == 2){
    console.log(numero + " é primo");
}else{
    console.log(numero + " não é primo");
}

console.log("-------------------\n\n");

// exercicio 01
function imprimir(){
    console.log("Hello World!");

}
imprimir();

console.log("-------------------\n\n");

// exercicio 02
function imprimirIdade(num){
    console.log(`Você tem ${num} anos`);
}
imprimirIdade(17);

console.log("-------------------\n\n");

// exercicio 03
function soma(w, z){
    return w + z;
}

console.log(soma(5,5));

// exercicio 04
function numeroAleatorio(x){
    return Math.random(x);
};

console.log(numeroAleatorio(10));

console.log("-------------------\n\n");


// exercício 05
function autoEscola(idade) {
    if(idade>=18){
        console.log("Pode entrar na auto escola!");
    } else{
        console.log("Não pode entrar na auto escola!");
    }
}
autoEscola(18);
autoEscola(12);

console.log("-------------------\n\n");

// exercício 06

let tipoDado = true;
let frase = "O seu dado é um ";
if(typeof(tipoDado) == "string"){
    console.log(frase + "string");
} else if(typeof(tipoDado) == "number"){
    console.log(frase + "number");
}else if(typeof(tipoDado) == "boolean")
{
    console.log(frase + "boolean");
}
console.log("-------------------\n\n");

// exercício 07

function retornaPositivo(x){
    return Math.abs(x);
}

numeroRecebido= retornaPositivo(-7);
console.log(numeroRecebido);

console.log("-------------------\n\n");

// exercício 08

recebeString = (string ) =>{
    if(string.length > 10){
        console.log("Texto é muito longo");
    }else{
        console.log("Texto dentro do limite");
    }
};

recebeString("Iasmin");

console.log("-------------------\n\n");

// exercício 09

function exponencial(x,y){
    return x ** y;
}

console.log(exponencial(3,2))

console.log("-------------------\n\n");

// exercício 10

function decrementaNumeros(x){
    for(let i=x; i >0; i--){
        if(i%2==0){
            console.log(i)
        }
    }
}

decrementaNumeros(10);


