import { Calendar } from '@fullcalendar/core';
import timeGridPlugin from '@fullcalendar/timegrid';

let calendar;
const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');
  if (!calendarEl) {
    return
  }
  const agenda = JSON.parse(calendarEl.dataset.agenda);
  // console.log(agenda);
  // console.log(typeof(agenda));
  calendar = new Calendar(calendarEl, {
    plugins: [ timeGridPlugin ],
    initialView: 'timeGridWeek',
    slotLabelFormat: { hour: 'numeric', minute: '2-digit', omitZeroMinute: false, hour12: false },
    eventTimeFormat: { hour: '2-digit', minute: '2-digit', hour12: false },
    slotMinTime: '07:00:00',
    slotMaxTime: '23:00:01',
    firstDay: 1,
    allDaySlot: false,
    dayHeaderClassNames: 'calendar-day-header', 

    events: agenda
    // [
    //   { 
    //     title: 'Occupied',
    //     start: '2020-11-28T13:30:00',
    //     end: '2020-11-28T17:30:00',
    //   }      
    // ]
  });

  calendar.render();
}

export { calendar, initCalendar };
