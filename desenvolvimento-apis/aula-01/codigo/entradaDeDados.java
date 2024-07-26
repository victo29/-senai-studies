import java.util.Scanner;

public class entradaDeDados {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in); // Criando um Scanner para receber os dados
        System.out.println("Escreva seu nome: ");
        String nomeCliente = sc.next(); // Pegando o nome e armazenando na variável nomeCliente
        System.out.println("Escreva sua idade: ");
        int idade = sc.nextInt(); // Pegando a idade(número inteiro) armazenando na variável idade
        System.out.println("Olá " + nomeCliente + " sua idade é: " + idade); // Exibindo a variável
        sc.close(); // Fechando a instância, por que toda instaância criada deve ser fechada em
                    // algum momento

    }

}
