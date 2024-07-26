import java.util.Locale;

public class Aula01 {

    public static void main(String[] args) { // Método
        System.out.println("Hello, world"); // println -> Quebra uma linha
        System.out.print("Hello, world Sem quebrar linha -> "); // print -> Não quebra uma linha
        System.out.println("Hello, world");

        String nome = "Victor";
        int idade = 25;
        double altura = 1.65; // Declaração de varáveis <tipo> <nome> = <valor>

        System.out.println("Olá " + nome + " sua idade é: " + idade + " sua altura é: " + altura); // Utilizando
                                                                                                   // variável no
                                                                                                   // console

        double x = 10.35124567;

        System.out.printf("%.2f%n", x); // Formatando a Variável X para ter duas casas decimais
        System.out.printf("%.4f%n", x); // Formatando a Variável X para ter quatro casas decimais
        Locale.setDefault(Locale.US); // Mudando o localidade para alterar de , para .
        System.out.printf("%.2f%n", x); // Formatando a Variável X para ter duas casas decimais, só que com ponto.

        System.out.printf("Resultado = %.2f metros%n", x); // Concatenando e Formatando os dados

    }
}