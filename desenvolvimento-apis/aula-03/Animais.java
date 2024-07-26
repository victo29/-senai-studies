public class Animais {

    private String nome;
    private float comprimento;
    private int patas;
    private String cor;
    private String ambiente;
    private float velocidade;
    
    public Animais(String nome, float comprimento, int patas, String cor, String ambiente, float velocidade){
        this.nome = nome;
        this.comprimento = comprimento;
        this.patas = patas;
        this.cor = cor;
        this.ambiente = ambiente;
        this.velocidade = velocidade;
    }


    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getComprimento() {
        return comprimento;
    }
    public void setComprimento(float comprimento) {
        this.comprimento = comprimento;
    }

    public int getPatas() {
        return patas;
    }
    public void setPatas(int patas) {
        this.patas = patas;
    }

    public String getCor() {
        return cor;
    }
    public void setCor(String cor) {
        this.cor = cor;
    }
    
    public String getAmbiente() {
        return ambiente;
    }
    public void setAmbiente(String ambiente) {
        this.ambiente = ambiente;
    }

    public float getVelocidade() {
        return velocidade;
    }
    public void setVelocidade(float velocidade) {
        this.velocidade = velocidade;
    }


}