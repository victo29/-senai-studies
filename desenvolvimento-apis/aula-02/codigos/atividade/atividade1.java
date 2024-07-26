import java.util.Scanner;

public class atividade1 {

    public static void main(String[] args) {
        int soma = 0;
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < 4; i++) {
            System.out.println("Digite um número: ");
            int entrada = sc.nextInt();
            soma = soma + (entrada * entrada);
        }
        System.out.println(soma);
        sc.close();
    }
}