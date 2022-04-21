package Models;


public class Ordini {
    private String data;
    private String ind;
    private String piatto;
    private int quantita;
    
    public Ordini(){}
    
    public Ordini(String d, String i, String p, int q){
        data=d;
        ind=i;
        piatto=p;
        quantita=q;
    }
    
    public String getData() { return data; }
    public String getInd() { return ind; }
    public String getNome_piatto() { return piatto; }
    public int getQuantita() { return quantita; }
}

