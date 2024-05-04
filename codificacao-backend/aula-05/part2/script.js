// Exercício 1
let nome1 = "Iasmin";
let nome2 = 'Iasmin';
let nome3 = `Iasmin`; 

console.log(nome1, nome2, nome3);
console.log("---------------")
//Exercício 2
let valor1 = 1;
let valor2 = 1.5;
let valor3 = 1+4;

console.log(valor1, valor2, valor3);
console.log("---------------")
//Exercício 3
let booleano1 = 10 > 6;
let booleano2 = 2 <= 2;
let booleano3 = 10 != 9;

//Exercício 4
let operadores1 = "victor" != "vitor" && "iasmin" != "iasmim" ;
let operadores2 = "victor" != "vitor" || "iasmin" != "iasmim" ;
let operadores3 = !("victor" != "vitor" );
console.log(operadores1, operadores2, operadores3);
console.log("---------------");

//Exercício 5
console.log(10 / "oi");
console.log("---------------");

//Exercício 6
let salve = "Salve galera";
let numero = 10;
let booleano = 10 == 10;

//Exercício 7
let idade = 19;
if(idade > 18){
    console.log("pode entrar");
}
console.log("---------------");

//Exercício 8
const nome4 = "Victor";
if(nome4 == "Victor"){
    console.log(`Bom dia ${nome4}`)
}
console.log("---------------");

//Exercício 9 
console.log(Math.pow(2,2));
console.log(Math.pow(3,2));
console.log(Math.pow(18,2));
console.log("---------------");

//Exercício 10
let velocidade = 70;
if(velocidade > 80){
    console.log("Você foi multado");
}else{
    console.log("Você não foi multado");
};
console.log("---------------");

//Exercício 11
let idadeMotorista = 19;
let cnh = true;

if (idadeMotorista > 18 && cnh ){
    console.log("Você pode dirigir");
}else{
    console.log("Você não pode dirigir")
}