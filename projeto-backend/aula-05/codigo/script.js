// Callbacks

// console.log("Ainda não chamou callback");

// setTimeout(function(){
//     console.log("CHAMOU");
// },2000);

// console.log("Ainda não chamou callback");

// Promises

let endrick = Promise.resolve("Hexa");
console.log("O hexa vem?");
console.log(endrick);
endrick.then((value) => console.log('O Endrick vai trazer o ' + value));

// Async functions

async function somar(a,b){
    return a + b;
}

console.log(somar(2,4));

somar(2,4).then(value=>console.log(value));


console.log("------------------------------");

function somaComDelay(a,b){
    return new Promise((resolve =>{
        setTimeout(function(){
            resolve(a+b);
        },4000);
    }))
}

async function resSoma(a,b,c){
    let x = somaComDelay(a,b);
    let y = c;
    return await x + y;
}

resSoma(1,2,3).then(value => console.log(value));

