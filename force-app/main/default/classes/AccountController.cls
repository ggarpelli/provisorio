public class AccountController {

    public static Account insertAccount(Account accountToInsert) {
        insert accountToInsert;
        return accountToInsert;
    }

    public static List<Account> insertAccounts(List<Account> accountToInsert) {
        insert accountToInsert;
        return accountToInsert;
    }

    public static List<Account> getAllAccounts() {
        List<Account> contas = [SELECT Name, Phone FROM Account];
        return contas;
    }//last try

    public void printAllAccounts() {
        List<Account> printAll = getAllAccounts();
        for (Account imprimir : printAll) {
            System.debug('Account Name: ' + imprimir.Name + ' Phone Number: ' + imprimir.Phone);
        }
    }

    public Integer getAccountSize() {
        List<Account> tamanhoLista = getAllAccounts();
        Integer size = tamanhoLista.size();
        return size;
    }
}
