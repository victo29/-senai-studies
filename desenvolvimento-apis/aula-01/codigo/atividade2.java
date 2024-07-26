import java.util.Scanner;

public class atividade2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um número: ");
        int num1 = sc.nextInt();
        System.out.println("Digite outro número: ");
        int num2 = sc.nextInt();
        int soma = num1 + num2;
        double media = soma / 2;
        System.out.println("A média dos números é: " + media);
        sc.close();
    }
}
