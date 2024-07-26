import java.util.Scanner;

public class atividade3 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite uma cor: ");
        String cor = sc.next();
        if (cor.equals("verde")) {
            System.err.println("O valor do verde é R$: 10,00");
        } else if (cor.equals("azul")) {
            System.err.println("O valor do azul é R$: 20,00");
        } else if (cor.equals("amarelo")) {
            System.err.println("O valor do amarelo é R$: 30,00");
        } else if (cor.equals("vermelho")) {
            System.err.println("O valor do vermelho é R$: 40,00");
        } else {
            System.out.println("A cor digitada não existe!");
        }
        sc.close();
    }
}