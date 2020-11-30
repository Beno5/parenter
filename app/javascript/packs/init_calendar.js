import { Calendar } from '@fullcalendar/core';
import timeGridPlugin from '@fullcalendar/timegrid';

const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');
  const evenement = calendarEl.dataset.truc
  console.log(evenement);
  const calendar = new Calendar(calendarEl, {
    // plugins: [ dayGridPlugin ]
    plugins: [ timeGridPlugin ],
    initialView: 'timeGridWeek',
    slotLabelFormat: { hour: 'numeric', minute: '2-digit', omitZeroMinute: false, hour12: false },
    eventTimeFormat: { hour: '2-digit', minute: '2-digit', hour12: false },
    slotMinTime: '07:00:00',
    slotMaxTime: '23:00:01',  
    firstDay: 1,

    events: [
      { 
        title: 'Occupied',
        start: '2020-11-26T12:00:00',
        end: '2020-11-26T23:30:00',
      },
      { 
        title: 'Occupied',
        start: '2020-11-27T07:30:00',
        end: '2020-11-27T18:30:00',
      },
      { 
        title: 'Occupied',
        start: '2020-11-28T11:30:00',
        end: '2020-11-28T13:00:00',
      },
      { 
        title: 'Occupied',
        start: '2020-11-28T13:30:00',
        end: '2020-11-28T17:30:00',
      }      
    ]
  });

  calendar.render();
}


initCalendar();