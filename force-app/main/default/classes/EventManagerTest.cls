@IsTest
public class EventManagerTest {
    
    @IsTest
    public static void testCreateEvent() {
        EventManager eventManager = new EventManager();
        eventManager.createEvent('Salesforce Conference', Date.today());
        
        EventManager.Event event = eventManager.getEventByName('Salesforce Conference');
        System.assertNotEquals(null, event, 'O evento deve ser criado e não deve ser nulo.');
        System.assertEquals('Salesforce Conference', event.name, 'O nome do evento deve ser "Salesforce Conference".');
        System.assertEquals(Date.today(), event.eventDate, 'A data do evento deve ser a data de hoje.');
    }
    
    @IsTest
    public static void testAddParticipant() {
        EventManager eventManager = new EventManager();
        eventManager.createEvent('Salesforce Conference', Date.today());
        
        EventManager.Event event = eventManager.getEventByName('Salesforce Conference');
        event.addParticipant('John Doe');
        
        System.assertEquals(1, event.getParticipantCount(), 'O número de participantes deve ser 1.');
        System.assertEquals('John Doe', event.participants[0], 'O nome do participante deve ser "John Doe".');
    }
    
    @IsTest
    public static void testGetTotalParticipants() {
        EventManager eventManager = new EventManager();
        eventManager.createEvent('Salesforce Conference', Date.today());
        eventManager.createEvent('Admin Meetup', Date.today());
        
        EventManager.Event event1 = eventManager.getEventByName('Salesforce Conference');
        event1.addParticipant('John Doe');
        event1.addParticipant('Jane Smith');
        
        EventManager.Event event2 = eventManager.getEventByName('Admin Meetup');
        event2.addParticipant('Alice Johnson');
        
        Integer totalParticipants = eventManager.getTotalParticipants();
        System.assertEquals(3, totalParticipants, 'O número total de participantes deve ser 3.');
    }
}
