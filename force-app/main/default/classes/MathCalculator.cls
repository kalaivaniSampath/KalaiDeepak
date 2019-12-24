public class MathCalculator {
    Decimal c;
    public Decimal add(Decimal a, Decimal b)
    {
        c=a+b;
        return c;
        
    }
	
    public Decimal subtract(Decimal a, Decimal b )
    {
        c=a-b;
        return c;
    }
    public Decimal multiply(Decimal a, Decimal b)
    {
        c=a*b;
        return c;
        
    }
}

/*** Developer console
     * Collection l=new Collection();
    l.PrintList();
    
    Collection s=new Collection();
    s.PrintSet();
    
    Collection ma=new Collection();
    ma.PrintMap();
**/