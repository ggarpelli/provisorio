public class novaConta {

    public static Account newAccount() {
        Account contaTest = new Account();
        contaTest.Name = 'Conta Teste';
        contaTest.Phone = '1321321321';
        insert contaTest;
        return contaTest; 
    }
    
    public static Account attCampos() {
        Account att = [SELECT ID FROM Account WHERE Name = 'Conta Teste' LIMIT 1];
        att.Phone = '19997494747';
        update att;
        return att;
    }
    
    public static Contact newContact() {
        // Criação de um novo contato
        Contact newContact = new Contact();
        newContact.FirstName = 'Guilherme';
        newContact.LastName = 'Parise';
        // Presumindo que você queira associar o contato à conta criada
        // Aqui você pode definir o AccountId se necessário
        // newContact.AccountId = [SELECT Id FROM Account WHERE Name = 'Conta Teste' LIMIT 1].Id;
        
        insert newContact;
        return newContact;
    }
}
