@IsTest
public class Covid19Test {

    @IsTest
    static void testDefaultConstructor() {
        // Testando o construtor padrão
        Covid19 covid = new Covid19();
        System.assertEquals(10, covid.recuperadosCidade, 'recuperadosCidade deve ser 10 após a inicialização.');
        System.assertEquals(10, Covid19.recuperadosPais, 'recuperadosPais deve ser 10 após a inicialização.');
    }

    @IsTest
    static void testParameterizedConstructor() {
        // Testando o construtor parametrizado
        Integer initialCount = 20;
        Covid19 covid = new Covid19(initialCount);
        System.assertEquals(initialCount, covid.recuperadosCidade, 'recuperadosCidade deve ser igual ao valor passado no construtor.');
        System.assertEquals(initialCount, Covid19.recuperadosPais, 'recuperadosPais deve ser igual ao valor passado no construtor.');
    }

    @IsTest
    static void testPacientesTratados() {
        // Testando o método pacientesTratados
        Covid19 covid = new Covid19();
        covid.pacientesTratados();
        System.assertEquals(11, covid.recuperadosCidade, 'recuperadosCidade deve ser 11 após chamar pacientesTratados.');
        System.assertEquals(11, Covid19.recuperadosPais, 'recuperadosPais deve ser 11 após chamar pacientesTratados.');
    }

    @IsTest
    static void testPacientesPais() {
        // Testando o método pacientesPais
        Covid19.pacientesPais();
        // Note que não podemos verificar diretamente o output do System.debug
        // Mas podemos verificar se o método foi chamado sem erros
    }
}
