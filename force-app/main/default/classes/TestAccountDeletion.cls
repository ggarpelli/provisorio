@isTest
private class TestAccountDeletion {
    @isTest
    static void TestDeleteAccountWithOneOpportunity() {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
        Account acct = new Account();
        acct.Name = 'Test Account';
        insert acct;
        
        Opportunity opp = new Opportunity();        
        opp.Name = acct.Name + 'Opportunity';
        opp.StageName = 'Prospecting';
        opp.CloseDate=System.today().addMonths(1);
        opp.AccountId=acct.Id;
        insert opp;
        
        Contact contact = new Contact();
        contact.AccountId= opp.AccountId;
        contact.AssistantName=opp.Name;
        contact.MobilePhone='3283-2248';
        insert contact;
        
        System.debug('contact');
        System.debug(contact);
         
        
        
        // Perform test
        Test.startTest();
        Database.DeleteResult result = Database.delete(acct, false);
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                            result.getErrors()[0].getMessage());
    }
    
}