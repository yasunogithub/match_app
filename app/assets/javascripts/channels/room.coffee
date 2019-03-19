document.addEventListener 'turbolinks:load', ->
  App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: $('#messages').data('room_id'), user_id: $('#messages').data('user_id'), teacher_id: $('#messages').data('teacher_id'), sent_user: $('#messages').data('sent_user') },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      $('#messages').prepend '<div>' + data['sent_user'] + ': ' + data['message'] + '</div>'
      # Called when there's incoming data on the websocket for this channel

    speak: (message) ->
      @perform 'speak', message: message

  $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
    if event.keyCode is 13 # return = send
      App.room.speak event.target.value
      event.target.value = ''
      event.preventDefault()