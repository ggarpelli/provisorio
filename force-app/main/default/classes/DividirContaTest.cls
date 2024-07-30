@isTest
public class DividirContaTest {

    @isTest
    public static void testContaIndividual() {
        DividirConta dividirConta = new DividirConta();
        
        // Testando quando o número de pedaços é zero
        Integer resultado = dividirConta.contaIndividual(0);
        System.assertEquals(0, resultado, 'Resultado deve ser 0 para 0 pedaços');

        // Testando quando o número de pedaços é 1
        resultado = dividirConta.contaIndividual(1);
        System.assertEquals(8, resultado, 'Resultado deve ser 8 para 1 pedaço');

        // Testando quando o número de pedaços é 2
        resultado = dividirConta.contaIndividual(2);
        System.assertEquals(14, resultado, 'Resultado deve ser 14 para 2 pedaços');

        // Testando quando o número de pedaços é 3
        resultado = dividirConta.contaIndividual(3);
        System.assertEquals(21, resultado, 'Resultado deve ser 21 para 3 pedaços');

        // Testando quando o número de pedaços é 4
        resultado = dividirConta.contaIndividual(4);
        System.assertEquals(24, resultado, 'Resultado deve ser 24 para 4 pedaços');

        // Testando quando o número de pedaços é 5
        resultado = dividirConta.contaIndividual(5);
        System.assertEquals(30, resultado, 'Resultado deve ser 30 para 5 pedaços');

        // Testando quando o número de pedaços é um número grande, por exemplo, 18
        resultado = dividirConta.contaIndividual(18);
        System.assertEquals(108, resultado, 'Resultado deve ser 108 para 18 pedaços');
    }
}
