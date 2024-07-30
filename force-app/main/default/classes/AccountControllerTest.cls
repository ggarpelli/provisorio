@IsTest
public class AccountControllerTest {
    
    @IsTest
    public static void insertAccountTest() {
        // Criação de uma conta para teste
        Account acc1 = new Account(Name = 'Test Account');
        Account insertedAccount = AccountController.insertAccount(acc1);
        
        // Verificação se a conta foi inserida corretamente
        System.assertNotEquals(null, insertedAccount.Id, 'A conta deve ter um Id após ser inserida.');
        System.assertEquals('Test Account', insertedAccount.Name, 'O nome da conta deve ser "Test Account".');
    }
    
    @IsTest
    public static void insertAccountsTest() {
        // Criação de várias contas para teste
        List<Account> accounts = new List<Account>();
        accounts.add(new Account(Name = 'Test Account 2'));
        accounts.add(new Account(Name = 'Test Account 3'));
        
        List<Account> insertedAccounts = AccountController.insertAccounts(accounts);
        
        // Verificação se as contas foram inseridas corretamente
        System.assertEquals(2, insertedAccounts.size(), 'Devem existir duas contas inseridas.');
        for (Account acc : insertedAccounts) {
            System.assertNotEquals(null, acc.Id, 'Cada conta deve ter um Id após ser inserida.');
        }
    }
    
    @IsTest
    public static void getAllAccountsTest() {
        // Limpar dados de teste pré-existentes
        delete [SELECT Id FROM Account];
        
        // Inserir contas para o teste
        Account acc1 = new Account(Name = 'Test Account 1', Phone = '1234567890');
        Account acc2 = new Account(Name = 'Test Account 2', Phone = '0987654321');
        insert new List<Account>{acc1, acc2};
        
        // Recuperar todas as contas
        List<Account> allAccounts = AccountController.getAllAccounts();
        
        // Verificação se as contas foram recuperadas corretamente
        System.assertEquals(2, allAccounts.size(), 'Devem existir duas contas recuperadas.');
    }
    
    @IsTest
    public static void printAllAccountsTest() {
        // Limpar dados de teste pré-existentes
        delete [SELECT Id FROM Account];
        
        // Inserir contas para o teste
        Account acc1 = new Account(Name = 'Test Account 1', Phone = '1234567890');
        Account acc2 = new Account(Name = 'Test Account 2', Phone = '0987654321');
        insert new List<Account>{acc1, acc2};
        
        // Teste para verificar se o método printAllAccounts executa sem erros
        Test.startTest();
        AccountController accountController = new AccountController();
        accountController.printAllAccounts();
        Test.stopTest();
    }
    
    @IsTest
    public static void getAccountSizeTest() {
        // Limpar dados de teste pré-existentes
        delete [SELECT Id FROM Account];
        
        // Inserir contas para o teste
        Account acc1 = new Account(Name = 'Test Account 1', Phone = '1234567890');
        Account acc2 = new Account(Name = 'Test Account 2', Phone = '0987654321');
        insert new List<Account>{acc1, acc2};
        
        // Testar o método getAccountSize
        AccountController accountController = new AccountController();
        Integer accountSize = accountController.getAccountSize();
        
        // Verificação do tamanho da lista de contas
        System.assertEquals(2, accountSize, 'O tamanho da lista de contas deve ser 2.');
    }
}
