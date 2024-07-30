public class EventManager {
    public class Event {
        public String name { get; set; }
        public Date eventDate { get; set; }
        public List<String> participants { get; set; }

        public Event(String name, Date eventDate) {
            this.name = name;
            this.eventDate = eventDate;
            this.participants = new List<String>();
        }

        public void addParticipant(String participant) {
            this.participants.add(participant);
        }

        public Integer getParticipantCount() {
            return this.participants.size();
        }
    }

    private List<Event> events;

    public EventManager() {
        this.events = new List<Event>();
    }

    public void createEvent(String name, Date eventDate) {
        Event newEvent = new Event(name, eventDate);
        this.events.add(newEvent);
    }

    public Event getEventByName(String name) {
        for (Event e : this.events) {
            if (e.name == name) {
                return e;
            }
        }
        return null;
    }

    public Integer getTotalParticipants() {
        Integer total = 0;
        for (Event e : this.events) {
            total += e.getParticipantCount();
        }
        return total;
    }
}
