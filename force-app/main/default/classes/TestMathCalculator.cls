@isTest
public class TestMathCalculator {
    
    @isTest 
    Static void TestCalculator()
    //static TestMethod void TestCalculator()
    {
        MathCalculator mc=new MathCalculator();
        system.assertEquals(10, mc.add(5, 5));
        system.assertEquals(4, mc.subtract(7, 3));
    	System.assertEquals(81, mc.multiply(9, 9)); 
       
        
    }
}