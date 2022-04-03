
public class rettangolo {
    protected int larghezza=0; //attributi che descrivono lo stato
    protected int altezza=0;
    public rettangolo(){}
    public rettangolo(int l, int h){
        larghezza=l;
        altezza=h;
    }
    
    public int perimetro (){
        return 2*larghezza+2*altezza;
    }
    public int area(){
        return larghezza*altezza/2;
    }
}
