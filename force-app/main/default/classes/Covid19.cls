public class Covid19 {

    public Integer recuperadosCidade = 10;
    public static Integer recuperadosPais = 10;

    public Covid19() {
        System.debug('Constructor está sendo chamado');
    }

    public Covid19(Integer recuperadosCidade) {
        this();
        System.debug('Constructor2 está sendo chamado');
        this.recuperadosCidade = recuperadosCidade;
        recuperadosPais = recuperadosCidade;
    }

    public void pacientesTratados() {
        recuperadosCidade++;
        recuperadosPais++;
    }

    public static void pacientesPais() {
        System.debug('Numero de casos no Pais é de :' + recuperadosPais);
    }
}
