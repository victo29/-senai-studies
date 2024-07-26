import java.util.Scanner;

public class atividade1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um numero:");
        double n1 = sc.nextDouble();
        System.out.println("Digite outro numero:");
        double n2 = sc.nextDouble();

        System.out.println("Multiplicação: " + n1 * n2);
        System.out.println("Divisão: " + n1 / n2);
        System.out.println(n1 + n2);
        System.out.println(n1 - n2);

        sc.close();

    }
}
