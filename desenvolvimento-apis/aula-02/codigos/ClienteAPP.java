public class ClienteAPP {

    public static void main(String[] args) {

        ClientePF clientepf1 = new ClientePF("Victor", "Ribeira", "10226049007");

        ClientePJ clientepj1 = new ClientePJ("Victor", "Ribeira", "000999191919191919892832");

        System.out.println("cliente pf dados: " + clientepf1.getNome() + " " + clientepf1.getCpf());

        System.out.println("cliente pj dados: " + clientepj1.getNome() + " " + clientepj1.getCnpj());

    }
}
