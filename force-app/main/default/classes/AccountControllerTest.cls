@IsTest
public class AccountControllerTest {
    
    @IsTest
    public static void insertAccountTest(){
        Account acc1 = new Account();
        acc1.Name = 'Test Account';
        AccountController.insertAccount(acc1); 
    }
    
    @IsTest
    public static void insertAccountsTest(){
        List<Account> accounts = new List<Account>();
        Account acc2 = new Account();
        acc2.Name = 'Test Account 2';
        accounts.add(acc2);
        AccountController.insertAccounts(accounts); 
    }
    
    @IsTest
    public static void getAllAccountsTest(){
        List<Account> allAccounts = AccountController.getAllAccounts(); 
        System.assertEquals(0, allAccounts.size());
    }  
}