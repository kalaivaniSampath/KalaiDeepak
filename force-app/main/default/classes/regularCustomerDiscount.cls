public class regularCustomerDiscount {
    static final double regularCustomerDiscount=0.1;
    Static Double finalprice=0;
    
    public static Double ProvideDiscount(integer price)
    {
        finalprice=price-price*regularCustomerDiscount;
        return finalprice;
    }
}