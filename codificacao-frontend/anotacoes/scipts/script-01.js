// Calcular fatorial
function fatorial(n){
    var product = 1
    while(n>1){
        product *= n
        n--
    } 
    return product
}

console.log(fatorial(5))