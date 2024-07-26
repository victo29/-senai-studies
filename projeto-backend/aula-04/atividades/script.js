// Exercício 1

class conta{
    constructor(saldo){
        this.saldo = saldo;
    }

    deposito(valor){
        if(valor > 0){
            this.saldo += valor;
        }else{
            console.log("O valor não pode ser negativo!")
        }
    }

    saque(valor){

        if(valor<this.saldo){
            this.saldo-=valor;
        }else{
            console.log("O valor do saque é maior que o saldo!")
        }
    }

    get getSaldo(){
        return this.saldo
    }

}

let conta1 = new conta(1000);
console.log(conta1.getSaldo)
conta1.deposito(100);
console.log(conta1.getSaldo)
conta1.saque(700);
console.log(conta1.getSaldo)


// Exercício 3


class Endereco{

    constructor(rua,bairro,cidade,estado){
        this.rua = rua;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
    }

    set setRua(rua){
        this.rua = rua;
    }

    set setBairro(bairro){
        this.bairro = bairro;
    }

    set setCidade(cidade){
        this.cidade = cidade;
    }

    set setEstado(estado){
        this.estado = estado;
    }
}

let enderecoCliente = new Endereco("Lélis piedade", "Ribeira", "Salvador", "Bahia");

// Exercício 04


class Carro{

    constructor(marca,cor,gasolinaRestante){
        this.marca = marca;
        this.cor = cor;
        this.gasolinaRestante = gasolinaRestante;        
    }

    dirigir(){
        while(this.gasolinaRestante>0){
            this.gasolinaRestante -=1;

            console.log("Você tem " + this.gasolinaRestante + " de gasolina" )
        }
    }

    abastecer(valor){
        if(valor>0){
            this.gasolinaRestante+=valor;

            console.log("Gasolina abastecida agora você tem: "+ this.gasolinaRestante + " de gasolina")
        }
    }

}

let carro1 = new Carro("Fiat","Prata", 50);

carro1.dirigir();
carro1.abastecer(40)


// Exercício 5

console.log("-----Exercício 05-----\n\n\n")

class contaBancaria{
    constructor(saldoCorrente,saldoPoupanca){
        this.saldoCorrente = saldoCorrente;
        this.saldoPoupanca = saldoPoupanca;
        this.jurosPoupanca = 2.5;
    }

    get getSaldoCorrente(){
        return this.saldoCorrente
    }

    get getSaldoPoupanca(){
        return this.saldoPoupanca;
    }

    deposito(valor){
        if(valor > 0){
            this.saldoCorrente += valor;
        }else{
            console.log("O valor não pode ser negativo!")
        }
    }

    saque(valor){

        if(valor<this.saldoCorrente){
            this.saldoCorrente-=valor;
        }else{
            console.log("O valor do saque é maior que o saldo!");
        }
    }

    transferirPoupanca(valor){
        if(valor<this.saldoCorrente){
            this.saldoPoupanca+=valor;
            this.saldoCorrente-=valor;

            console.log("O valor da conta poupança é: " + this.saldoPoupanca);
            

            console.log("O valor da conta corrente é: " + this.saldoCorrente);
        }else{
            console.log("O valor da transferência é maior que o saldo!");
        }
    }
}


let conta2 = new contaBancaria(1000,1230);

conta2.deposito(1000);
console.log(conta2.getSaldoCorrente);

conta2.saque(500);
console.log(conta2.getSaldoCorrente);

conta2.transferirPoupanca(1000);
console.log(conta2.getSaldoCorrente);
console.log(conta2.getSaldoPoupanca);


class contaEspecial extends contaBancaria{
    constructor(saldoCorrente,saldoPoupanca){
        super(saldoCorrente,saldoPoupanca)
        this.jurosPoupanca = 5;
     
    }
}
