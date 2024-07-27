public class novaConta {
    
    public static Account newAccount() {
        Account contaTest = new Account();
        contaTest.Name = 'Conta Teste';
        contaTest.Phone = '1321321321';
        insert contaTest;
        return contaTest; 
    }
    
    public static Account attCampos() {
        
        Account att = [SELECT ID FROM Account Where Name = 'Conta Teste'];
        att.Phone = '19997494747';
        update att;
        return att;
        
    }
    
    public static Contact newContact() {
        Contact newContact = [SELECT ID FROM Contact Where Name = 'Conta Teste'];
        
       // newContact.Name = 'Guilherme';
        newContact.LastName = 'Parise';
        
        insert newContact;
            return newContact;
    }
}