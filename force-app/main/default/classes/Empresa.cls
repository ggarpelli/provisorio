public class Empresa {
    
    //Lista para armazenar todos os clientes
    Private List<Client> todosClientes = new List<Client>();
    
    //Classe que vai ser chamada passando os dados do cliente
    public void adicionarCliente(String clientName, String webSite, String email, Long phone){
        //Instanciou a classe Client passando os valores (dentro da chave)
        Client chamaClasse = new Client(clientName, webSite, email, phone);
        //adicionou os dados do cliente na lista
        todosClientes.add(chamaClasse);
    }
	
    //Classe para imprimir todos os Clientes
    public void imprimeTodosClientes(){
        for (Client chamaClasse : todosClientes){
            System.debug('Customer Name: '+chamaClasse.clientName+', Website: '+chamaClasse.webSite+', Phone: '+chamaClasse.phone+', Email: '+chamaClasse.email);
        }   
    }
    
    // Classe privada que vai armazenar o dado dos clientes. test
    // Change FROM Feature2
    private class Client{
        Public String clientName;
        Public String webSite;
        Public String email;
        Public Long phone;    
        
        //Construtor da classe Client
        private Client(String clientName, String webSite, String email, Long phone){
            this.clientName = clientName;
            this.webSite = webSite;
            this.email = email;
            this.phone = phone;
        }
    }   
}