import java.util.Scanner;

public class atividade4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite uma palavra: ");
        String palavra1 = sc.next();
        System.out.println("Digite outra palavra: ");
        String palavra2 = sc.next();
        String concatenado = palavra1 + " " + palavra2;
        System.out.println("O resultado foi: " + concatenado);
        sc.close();
    }
}
