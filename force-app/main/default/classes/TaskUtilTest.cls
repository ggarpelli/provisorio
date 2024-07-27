@isTest
public with sharing class TaskUtilTest {
    @isTest 
    static void testTaskPriority() {
        String prioridade = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', prioridade);
    }
    @isTest 
    static void testTaskPriorityHigh() {
        String prioridade = TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', prioridade);
    }
    
    @isTest 
    static void testTaskPrioritynull() {
        String prioridade = TaskUtil.getTaskPriority('');
        System.assertEquals(null, prioridade);
        
    }			
}