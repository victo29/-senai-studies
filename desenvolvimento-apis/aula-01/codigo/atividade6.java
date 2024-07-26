import java.util.Scanner;

public class atividade6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite o seu peso: ");
        double peso = sc.nextDouble();
        System.out.println("Digite a sua altura: ");
        double altura = sc.nextDouble();
        double imc = peso / (altura * altura);
        System.out.println("O seu IMC é: " + imc);
        sc.close();
    }
}
