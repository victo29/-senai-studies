public class AnimaisAPP {
    public static void main(String[] args) {
        Mamifero vaca = new Mamifero("vaca", 180, 4, "Branco", "Pasto", 10, "Capim");
        Peixes salmao = new Peixes("Salmão", 18, 0, "Prata", "Mar", 180, "Nada");
        System.out.println(vaca.getAlimentos());
        System.out.println(salmao.getCaracteristicas());
    }
}
