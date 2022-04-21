package Models;

public class Piatto {
    private String nome;
    private int numeroPersone;
    private double costoPiatto;
    private int fkMenu;
    
    public Piatto(String n, int np, double cp, int fk){
        nome = n;
        numeroPersone = np;
        costoPiatto = cp;
        fkMenu = fk;
    }
    
    public String getNome(){
        return nome;
    }
    
    public int getNumeroPersone(){
        return numeroPersone;
    }
    
    public double getCostoPiatto(){
        return costoPiatto;
    }
    
    public int getFkMenu(){
        return fkMenu;
    }
}
