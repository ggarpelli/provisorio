public class AccountController {
    
    public Static Account insertAccount(Account accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }
    public Static List<Account> insertAccounts(List<Account> accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }
    public Static List<Account> getAllAccounts(){
        List<Account> contas = [SELECT Name, Phone FROM Account];
        return contas;
    }
    
    public void printAllAccounts(){
        List<Account> printAll = getAllAccounts();
        
        for (Account imprimir : printAll){
            System.debug('Account Name: '+imprimir.Name+ 'Phone Number: '+imprimir.Phone);
        }
        //essa linha foi adicionada para brincar
        //essa linha foi adicionada pelo Dev Console
    }
    public integer getAccountSize(){
        List<Account> tamanhoLista = getAllAccounts();
        Integer size = tamanhoLista.size();
        return size;
    }
}