public class Utenti {
    private String user;
    private String psw;
    private String mail;
    private int eta;
    private String sesso;
    
    public Utenti(){}
    
    public Utenti(String u, String p, String m, int e, String s) {
        user=u;
        psw=p;
        mail=m;
        eta=e;
        sesso=s;
    }
    
    public String getUser() { return user; }
    public String getPsw() { return psw; }
    public int getEta() { return eta; }
    public String getMail() { return mail; }
    public String getSesso() { return sesso; }
}

