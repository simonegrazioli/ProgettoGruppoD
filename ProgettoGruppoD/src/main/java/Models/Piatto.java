package Models;

public class Piatto {
    private int idPiatto;
    private String nome;
    private int numeroPersone;
    private double costoPiatto;
    private int fkMenu;
    
    public Piatto(int id, String n, int np, double cp, int fk){
        idPiatto = id;
        nome = n;
        numeroPersone = np;
        costoPiatto = cp;
        fkMenu = fk;
    }
    
    public int getId(){
        return idPiatto;
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
