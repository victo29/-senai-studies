public class Mamifero extends Animais {
    private String alimentos;

    public Mamifero(String nome, float comprimento, int patas, String cor, String ambiente, float velocidade,
            String alimentos) {
        super(nome, comprimento, patas, cor, ambiente, velocidade);
        this.alimentos = alimentos;
    }

    public String getAlimentos() {
        return alimentos;
    }

    public void setAlimentos(String alimentos) {
        this.alimentos = alimentos;
    }
}
