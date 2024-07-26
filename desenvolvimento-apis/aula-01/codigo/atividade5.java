import java.util.Scanner;

public class atividade5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite a força aplicada sobre o objeto: ");
        double forca = sc.nextDouble();
        System.out.println("Digite a distância percorrida sobre o objeto: ");
        double distancia = sc.nextDouble();
        double trabalho = forca * distancia;
        System.out.println("O trabalho gerado foi: " + trabalho);
        sc.close();
    }
}
