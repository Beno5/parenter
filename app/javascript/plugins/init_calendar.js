import { Calendar } from '@fullcalendar/core';
import timeGridPlugin from '@fullcalendar/timegrid';

const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');
  const calendar = new Calendar(calendarEl, {
    // plugins: [ dayGridPlugin ]
    plugins: [ timeGridPlugin ],
    initialView: 'timeGridWeek'
  });

  calendar.render();
}

export { initCalendar };
