import { Calendar } from '@fullcalendar/core';
import timeGridPlugin from '@fullcalendar/timegrid';

const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');
  const calendar = new Calendar(calendarEl, {
    // plugins: [ dayGridPlugin ]
    plugins: [ timeGridPlugin ],
    initialView: 'timeGridWeek',
    events: [
      { 
        title: 'Occupied',
        start: '2020-11-26T12:00:00',
        // startTime: '12:00',
        end: '2020-11-26T18:00:00',
        // endTime: '18:00',
      }
    ]
  });

  calendar.render();
}
// 

export { initCalendar };
