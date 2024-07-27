@isTest
public class EmpresaTest {
    
    @isTest
    public Static void chamaMetodo(){
        //test
        Empresa chamaClasse = new Empresa();
        chamaClasse.adicionarCliente('Joao','joao.com.br','joao@gmail.com',1316516156L);
        chamaClasse.imprimeTodosClientes();        
    }

}