
public class quadrato extends rettangolo{
    
    public quadrato(){}
    
    public quadrato(int lato){
        super(lato,lato);
    }
    
    public int perimetro (){
        return 4*larghezza;
    }
    public double GetCirconferenza(){
        return larghezza*3.14;
    }
}


