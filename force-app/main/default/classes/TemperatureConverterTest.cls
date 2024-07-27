@isTest
public class TemperatureConverterTest {
    @isTest
    public static void temperatureTest(){
        Decimal temperature = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11, temperature);
        
    }
    @isTest
    public static void temperatureTest2(){
        Decimal temperature = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, temperature);
        
    }
}