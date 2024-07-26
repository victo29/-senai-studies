public class Peixes extends Animais {
    private String caracteristicas;

    public Peixes(String nome, float comprimento, int patas, String cor, String ambiente, float velocidade,
            String caracteristicas) {
        super(nome, comprimento, patas, cor, ambiente, velocidade);
        this.caracteristicas = caracteristicas;
    }

    public String getCaracteristicas() {
        return caracteristicas;
    }

    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }
}
