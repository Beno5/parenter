import { Calendar } from '@fullcalendar/core';
import timeGridPlugin from '@fullcalendar/timegrid';

const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');
  const calendar = new Calendar(calendarEl, {
    // plugins: [ dayGridPlugin ]
    plugins: [ timeGridPlugin ],
    initialView: 'timeGridWeek',
    slotLabelFormat: { hour: 'numeric', minute: '2-digit', omitZeroMinute: false, hour12: false },
    eventTimeFormat: { hour: '2-digit', minute: '2-digit', hour12: false },
    slotMinTime: '07:00:00',
    slotMaxTime: '23:00:01',
    events: [
      { 
        title: 'Occupied',
        start: '2020-11-26T12:00:00',
        end: '2020-11-26T23:30:00',
      }
    ]
  });

  calendar.render();
}
// 

export { initCalendar };
