package Models;


public class Ordini {
    private String data;
    private String ind;
    private String piatto;
    private int quantita;
    private double costo;
    
    public Ordini(){}
    
    public Ordini(String d, String i, String p, int q, double c){
        data=d;
        ind=i;
        piatto=p;
        quantita=q;
        costo=c;
    }
    
    public String getData() { return data; }
    public String getInd() { return ind; }
    public String getNome_piatto() { return piatto; }
    public int getQuantita() { return quantita; }
    public double getCosto() { return costo; }
}

