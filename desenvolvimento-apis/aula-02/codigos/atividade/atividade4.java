import java.util.Scanner;

public class atividade4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite a sua idade: ");
        int idade = sc.nextInt();
        if (idade <= 12 && idade > 0) {
            System.out.println("é uma criança");
        } else if (idade <= 17 && idade >= 13) {
            System.out.println("é um adolescente");
        } else if (idade <= 59 && idade >= 16) {
            System.out.println("é um adulto");
        } else {
            System.out.println("é um idoso");
        }
        sc.close();
    }
}
