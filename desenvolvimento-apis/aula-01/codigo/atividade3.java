import java.util.Scanner;

public class atividade3 {
        public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um número: ");
        int num1 = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int num2 = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int num3 = sc.nextInt();
        int soma = num1 + num2 + num3;
        double media = soma / 3;
        System.out.println("A média dos números é: " + media);
        sc.close();
    }
}
