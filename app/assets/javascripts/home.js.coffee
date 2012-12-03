jQuery ($) ->
  $('.colorpicker').colorpicker()
  $('select').chosen()
  $('.datepicker').datepicker
    weekStart: 1
    todayHighlight: true
    format: 'yyyy-mm-dd'

  $('#draggable li').draggable
    revert: true
    revertDuration: 0

  $('#calendar').fullCalendar
    header:
      left: 'prev,next today'
      center: 'title'
      right: 'month,basicWeek'

    firstDay: 1
    weekends: false
    editable: true
    events: '/installations.json'

    eventDrop: (event, delta) ->
      $.post '/installations/move', {id: event.id, days: delta}

    eventResize: (event, delta) ->
      $.post '/installations/resize', {id: event.id, days: delta}

    droppable: true
    drop: (date, allDay) ->
      event =
        id: $(@).data('event_id')
        title: $(@).data('event_title')
        allDay: allDay
        start: date
        color: $(@).data('event_color')

      $.post '/installations/drop', {id: event.id, date: date}
      $('#calendar').fullCalendar( 'refetchEvents' )
      $(@).remove()

    eventClick: (event, jsEvent, view) ->
      window.open(event.edit_url, '_self')


  $('.validable').validate()

