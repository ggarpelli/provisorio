@isTest
public class EmpresaTest {
    
    @isTest
    public Static void chamaMetodo(){
        //test
        Empresa adicionarCliente = new Empresa();
        adicionarCliente.adicionarCliente('Joao','joao.com.br','joao@gmail.com',1316516156L);
        adicionarCliente.imprimeTodosClientes();        
    }

}